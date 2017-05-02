<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
<head>
 	<link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   
    <script src="��./js/modernizr.js"></script>

</head>
<body>

<header>
    <div id="logo" style=""><a href=""></a></div>
    <nav class="topnav" id="topnav">
        <!-- data-target����ģ̬������Ԫ�� -->

        <c:set var="visitor" value="${sessionScope.logoner}"/>
        <c:if test="${empty visitor}">
            <button class="btn btn-primary" data-toggle="modal" data-target="#mymodal-data" type="button">��¼</button>
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

          <a href="pages/regBlog.jsp">     <button class="btn btn-primary" data-toggle="modal" data-target="#mymodal-data1" type="button">ע��</button>
            </a><!-- ģ̬���������� -->
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

                <form action="../151/welcome.jsp" method="post">
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
                                    <label>�绰�� </label>
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
        </c:if>
        <c:if test="${!empty visitor}">
			<strong><c:out value="��������${visitor.userName}"/></strong>
        </c:if>



        <!-- data-target����ģ̬������Ԫ�� -->

       
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
          <!--  <li> <a href="my/logon?goWhere=adminTemp">������</a></li> --> 
          <li> <a href="my/admin/article?action=adminList">������</a></li>
             
            
        </ul>

    </div>
</div>

</body>
</html>