<%@ page contentType="text/html;charset=gb2312"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">
body { background-image: url("images/1.jpg");background-size: 100% 775px; background-repeat:no-repeat;}
</style>
<html>
<head>
    <title>������в���</title>
    <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   
    <script src="../js/modernizr.js"></script>
</head>
<body>
<table>
<!--  style="background: #FFF url(images/xinzhi3.jpg) ;width:1000px;height:100%"-->
<center>
    <c:set var="user" value="${requestScope.masterlist}"/>
<div style="height: 200px;margin: auto;"></div>
    <c:if test="${empty user}">
        <table border="10" width="1003" height="167"  style="margin-top:1;margin-bottom:1"><tr><td align="center">�÷������в������κβ���Ŷ��</td></tr></table>
    </c:if>

    <c:if test="${!empty user}">
        <div style="text-align: center;width: 80%;" >

            
            <div style="text-align: center">
            <table border="0" align="right">
            	<tr>
            		<td colspan="1" align="center" height=50px width=300px>   �Ƽ�����</td>
           		</tr>
          		<c:forEach var="single" items="${user}">
 				<tr>
 					<td align="center"><a href="my/goBlog?master=${single.id}"><p style="font:20px bold  italic"> ${single.userBlogName}</p></a>
 					</td>
 				 <td text-align="right"><p style="font:20px bold  italic">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
          			</td>	<!--${single.userName}  -->
               </tr>
            	</c:forEach>
             </table>
            </div>
                        <div style="height: auto;text-align: right">
                        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <!--btn btn-primary  -->
               <button class="btn btn-lg btn-link" data-toggle="modal" data-target="#mymodal-data" type="button" color="black">��¼</button>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;
            <div class="modal fade" id="mymodal-data" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content" >
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            
                        </div>
                        <div class="modal-body">
                           <form action="my/logon" method="post">
    <h2 class="text-center">���͵�¼</h2>
    <input type="hidden" name="goWhere" value="${param['goWhere']}">

    <c:out value="${requestScope.message}" escapeXml="false"/>
    <div class="form-group login-text" style="text-align: left;">
        <label> �û�����</label>
                       <input class="form-control" type="text" name="userName" size="30" placeholder="�����������û���" required autofocus>
        </div>
    <div class="form-group login-text" style="text-align: left;">
        <label> ��&nbsp;&nbsp;�룺</label>
                       <input class="form-control" type="password" name="userPswd" size="30"  placeholder="��������������" required>

        </div>
                            <button type="submit"  class="btn btn-lg btn-primary btn-block login-text">��¼</button>
                            <button type="reset" class="btn btn-lg btn-primary btn-block login-text">����</button>


</form>
                        </div>
                        <div class="modal-footer">
                            <button type="button"   class="btn btn-default" data-dismiss="modal">�ر�</button>
                            <button type="button"  class="btn btn-primary">����</button>
                        </div>
                    </div>
                </div>
            </div>
<br/>
   <a href="pages/regBlog.jsp">   <button class="btn btn-lg btn-link" data-toggle="modal" data-target="#mymodal-data1" type="button">ע��</button>
     </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;
            <!-- ģ̬���������� -->
            <div class="modal fade" id="mymodal-data1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" style=""></h4>
                        </div>
                        <div class="modal-body">
                            <center>
    <c:out value="${requestScope.message}" escapeXml="false"/>

                <form action="userReg?action=upIco" method="post" enctype="multipart/form-data">
                   ͷ��
                           <input type="file" name="userIco" size="50" value="${param.userIco}">������ߴ磺237*140��
                       <input type="submit" value="�ϴ�ͷ��">
                       <hr size="3">

                </form>

                <form action="pages/getRegForm.jsp" method="post">
                    <div class="form-group login-text" style="text-align: left;">
                    <input  type="hidden" name="action" value="userReg">
                        <label> ������</label>
                           <input class="form-control" type="text" name="userName" size="40" value="${param.userName}">
                       </div>

                    <div class="form-group login-text" style="text-align: left;">
                        <label>���룺 </label>
                           <input class="form-control" type="password" name="userPswd" size="30">
                    </div>

                        <div class="form-group login-text" style="text-align: left;">
                            <label>ȷ�����룺 </label>
                           <input class="form-control" type="password" name="aginPswd" size="30">
                        </div>
                            
                            <div class="form-group login-text" style="text-align: left;">
                                <label>�Ա� </label>
                     <input  type="radio" name="userSex" value="��" checked>��
                                <input type="radio" name="userSex" value="Ů">Ů

                                </div>
                    
                                <div class="form-group login-text" style="text-align: left;">
                                    <label>OICQ�� </label>
                                    <input class="form-control" type="text" name="userOicq" size="20" value="${param.userOicq}">
            
                                    </div>
                    
                                    <div class="form-group login-text" style="text-align: left;">
                                        <label>E-mail�� </label>
                    <input class="form-control" type="text" name="userEmail" size="35" value="${param.userEmail}">

                                        </div>
                    
                                        <div class="form-group login-text" style="text-align: left;">
                                            <label> �������ƣ� </label>
                    <input class="form-control" type="text" name="userBlogName" size="35" value="${param.userBlogName}">

                                            </div>
                    
                                            <div class="form-group login-text" style="text-align: left;">
                                                <label>����ǩ���� </label>
                           <input class="form-control" type="text" name="userMotto" size="35" value="${param.userMotto}">

                                                </div>
                    
                                                <div class="form-group login-text" style="text-align: left;">
                                                    <label>���ԣ� </label>
                    <input class="form-control" type="text" name="userFrom" size="50" value="${param.userFrom}">

                                                    </div>
                    
                                <button class="btn btn-lg btn-primary btn-block login-text" type="submit" >ע�Ჩ��</button>
                                <button class="btn btn-lg btn-primary btn-block login-text" type="reset" >������д</button>

                </form>

</center>
                        </div>
                        <div class="modal-footer">
                       
                            <button type="button" class="btn btn-default" data-dismiss="modal">�ر�</button>
                            <button type="button" class="btn btn-primary">����</button>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </c:if>
    
</center>
</table>
<table border="1" width="100%">

</table>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
<script>
    $(function(){
  $(".btn").click(function(){
    $("#themodal").modal();
  });
});
</script>
</body>
</html>