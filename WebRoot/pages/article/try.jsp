<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'try.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/base.css" rel="stylesheet">
    <link href="css/mood.css" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
 
   
    <script src="��./js/modernizr.js"></script>
    <script src="../js/silder.js"></script>

  </head>
  
  <body>
    <header>
  <div id="logo"><a href="/"></a></div>
  <nav class="topnav" id="topnav"><a href="index.html"><span>��ҳ</span><span class="en">Protal</span></a><a href="about.html"><span>������</span><span class="en">About</span></a><a href="newlist.html"><span>������</span><span class="en">Life</span></a><a href="moodlist.html"><span>��������</span><span class="en">Doing</span></a><a href="share.html"><span>ģ�����</span><span class="en">Share</span></a><a href="knowledge.html"><span>ѧ��ֹ��</span><span class="en">Learn</span></a><a href="book.html"><span>���԰�</span><span class="en">Gustbook</span></a></nav>
  </nav>
</header>
<div class="banner">
    <section class="box">


    </section>
</div>

<div class="template" >
    <div class="box" >
        <h3>

        </h3>
        <ul >
            <li><a href="goIndex">Blog��ҳ</a></li>
            <li> <a href="my/goBlog?master=${sessionScope.callBlogMaster.id}">������ҳ</a></li>
            <li><a href="my/guest/article?action=listShow">�ҵ�����</a></li>
            <li><a href="my/guest/photo?action=listShow">�ҵ����</a></li>
            <li> <a href="my/guest/media?action=listShow">�ҵ�Ӱ��</a></li>
            <li><a href="my/guest/word?action=linkTo">��������</a></li>
            <li> <a href="my/logon?goWhere=adminTemp">������</a></li>
             
            
        </ul>

    </div>
</div>
<div class="moodlist">
  <h1 class="t_nav"><span>ɾɾдд���ػ����䣬���޷�������ˮ��ȴҲ���������</span><a href="/" class="n1">��վ��ҳ</a><a href="/" class="n2">��������</a></h1>
  <div class="bloglist">
    <ul class="arrow_box">
     <div class="sy">
     <img src="images/001.png">
      <p> ��ϣ���ҵİ����������ģ������ĭ���ٰ���ü��ƽ����ˮ��</p>
      </div>
      <span class="dateview">2014-1-1</span>
    </ul>
    <ul class="arrow_box">
         <div class="sy">
      <p> ��ϣ���ҵİ����������ģ������ĭ���ٰ���ü��ƽ����ˮ�������������ҵ���������������һ���������������������ӣ������ӵ�ĸ�ף�Ϊ��������ϴ�·�����һ�ŵ��˵�Ŧ�ۡ�Ȼ������һ����ʱ���б��ϡ�</p>
        </div>
      <span class="dateview">2014-1-1</span>
    </ul>
    <ul class="arrow_box">
         <div class="sy">
      <img src="images/001.png">
      <p> ��ϣ���ҵİ����������ģ������ĭ���ٰ���ü��ƽ����ˮ�������������ҵ���������������һ���������������������ӣ������ӵ�ĸ�ף�Ϊ��������ϴ�·�����һ�ŵ��˵�Ŧ�ۡ�Ȼ������һ����ʱ���б��ϡ�</p>
      <span class="dateview">2014-1-1</span>
        </div>
    </ul>
  </div>
  <div class="page"><a title="Total record"><b>41</b></a><b>1</b><a href="/news/s/index_2.html">2</a><a href="/news/s/index_2.html">&gt;</a><a href="/news/s/index_2.html">&gt;&gt;</a></div>
</div>
<footer>
  <p>Design by DanceSmile <a href="http://www.miitbeian.gov.cn/" target="_blank">��ICP��11002373��-1</a> <a href="/">��վͳ��</a></p>
</footer>
  </body>
</html>
