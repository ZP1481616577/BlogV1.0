package com.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ArtReviewDao;
import com.toolsBean.Change;
import com.valueBean.UserSingle;

public class ArtReviewServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doPost(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		String action=request.getParameter("action");
		if("listShow".equals(action))
			doListShow(request,response);
		else if("review".equals(action))
			doReview(request,response);
		else if("adminList".equals(action))
			doAdminList(request,response);
		else if("delete".equals(action))
			doDelete(request,response);
		else
			doOther(request,response);
	}
	protected void doListShow(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		int rootId=Change.strToInt(request.getParameter("id"));
		String showPage=request.getParameter("showPage");
		String goWhich="my/guest/artReview?action=listShow&id="+rootId;
		
		List artrlist=null;
		ArtReviewDao artrDao=new ArtReviewDao();		
		try {
			artrlist=artrDao.getMoreReviewList(rootId, showPage, goWhich);
		} catch (SQLException e) {
			System.out.println("��ȡ���������б�ʧ�ܣ�");
			e.printStackTrace();			
		}
		request.setAttribute("artrlist",artrlist);
		request.setAttribute("createPage",artrDao.getPage());
		
		String forward=getInitParameter("artrListPage");
		RequestDispatcher rd=request.getRequestDispatcher(forward);
		rd.forward(request,response);
	}
	 public static final String UTF_8 = "UTF-8";
	 public static final String GBK = "GBK";  
	  public static final String GB2312 = "Gb2312";  
	  
	 public String toUTF_8(String str) throws UnsupportedEncodingException{
		  return this.changeCharset(str, UTF_8);
		 }
	 public String toGBK(String str) throws UnsupportedEncodingException {  
	        return this.changeCharset(str, GBK);  
	    } 
	 public String changeCharset(String str, String newCharset)
			   throws UnsupportedEncodingException {
			  if (str != null) {
			   //��Ĭ���ַ���������ַ�����
			   byte[] bs = str.getBytes();
			   //���µ��ַ����������ַ���
			   return new String(bs, newCharset);
			  }
			  return null;
			 }
	 public String changeCharset(String str, String oldCharset, String newCharset)  
	            throws UnsupportedEncodingException {  
	        if (str != null) {  
	            // �þɵ��ַ���������ַ�����������ܻ�����쳣��  
	            byte[] bs = str.getBytes(oldCharset);  
	            // ���µ��ַ����������ַ���  
	            return new String(bs, newCharset);  
	        }  
	        return null;  
	    }  
	protected void doReview(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String aaa=request.getCharacterEncoding();
		System.out.println(aaa);
		String forward="";
		String message=validateInsert(request);			//���б���֤
		if(!"".equals(message))							//����֤ʧ��
			forward=this.getServletContext().getInitParameter("messagePage");
		else{											//����֤�ɹ�
			String rootId=request.getParameter("rootId");
			String content=new String(request.getParameter("artRContent").getBytes("iso-8859-1"),"UTF-8");
			content=request.getParameter("artRContent");
			System.out.println(content);

		//	content=changeCharset(content,"GBK" );
		//	content=changeCharset(content,"utf-8" );
		//	content=toUTF_8(content);
			
		//	content=changeCharset(content, UTF_8, UTF_8);
		//	System.out.println(content);
			
			
			String time=Change.dateTimeChange(new Date());
			String author="";
			String noname=request.getParameter("noname");
			if("true".equals(noname))					//��������
				author="BLOG�ο�";
			else{										//������������
				HttpSession session=request.getSession();
				author=((UserSingle)session.getAttribute("logoner")).getUserName();
			}
			
			ArtReviewDao artReviewDao=new ArtReviewDao();
			try {
				artReviewDao.insert(new Object[]{rootId,author,content,time});
				forward="/my/guest/article?action=singleShow&id="+rootId;		
			} catch (SQLException e) {			
				message="<li>��������ʧ�ܣ�</li>";
				forward=this.getServletContext().getInitParameter("messagePage");
				e.printStackTrace();				
			}			
		}
		request.setAttribute("message",message);
		
		RequestDispatcher rd=request.getRequestDispatcher(forward);
		rd.forward(request,response);
	}
	protected void doAdminList(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		int rootId=Change.strToInt(request.getParameter("id"));
		String showPage=request.getParameter("showPage");
		String goWhich="my/admin/artReview?action=adminList&id="+rootId;
		
		List artrlist=null;
		ArtReviewDao artrDao=new ArtReviewDao();		
		try {
			artrlist=artrDao.getMoreReviewList(rootId, showPage, goWhich);
		} catch (SQLException e) {
			System.out.println("��̨����ȡ���������б�ʧ�ܣ�");
			e.printStackTrace();			
		}
		request.setAttribute("artrlist",artrlist);
		request.setAttribute("createPage",artrDao.getPage());
		
		String forward=getInitParameter("adminArtrListPage");
		RequestDispatcher rd=request.getRequestDispatcher(forward);
		rd.forward(request,response);
	}
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String message="";
		String forward="";
		int rootId=Change.strToInt(request.getParameter("rootId"));
		int id=Change.strToInt(request.getParameter("id"));
		
		int i=0;
		try {
			ArtReviewDao artReviewDao=new ArtReviewDao();
			i=artReviewDao.delete(id);
		} catch (SQLException e) {
			i=-1;
			e.printStackTrace();
		}
		if(i<=0){
			message="<li>ɾ������ʧ�ܣ�</li><a href='javascript:window.history.go(-1)'>�����ء�</a>";
			forward=getServletContext().getInitParameter("messagePage");
		}
		else{
			message="<li>ɾ�����ɹ���</li>";
			forward="/my/admin/artReview?action=adminList&id="+rootId;
		}
		
		request.setAttribute("message",message);		
		RequestDispatcher rd=request.getRequestDispatcher(forward);
		rd.forward(request,response);
	}
	protected void doOther(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
	}
	private String validateInsert(HttpServletRequest request) throws ServletException, IOException{
		String message="";
		String content=request.getParameter("artRContent");
		if(content==null||content.equals(""))
			message="<li>������ <b>�������ݣ�</b></li><a href='javascript:window.history.go(-1)'>�����ء�</a>";
		return message; 
	}
}