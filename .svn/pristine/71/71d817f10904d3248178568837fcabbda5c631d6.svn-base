<%@page import="notices.vo.QuestionVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	QuestionVO vo = (QuestionVO) request.getAttribute("vo");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 수정</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/listQuestion.css">
</head>
   	<header id="header-container-fluid">
		<jsp:include page="/main/header.jsp"/>
		<%-- <jsp:include page="/main/headerNav.jsp"/> --%>
	</header>
<body>


<%--  	<form action="updateQuestion.do" method="post" enctype="application/x-www-form-urlencoded">
	<input type="hidden" name="qesId" value="<%=vo.getQesId() %>">
	<br><span style="font-size: 14px">I D : <%=vo.getQesId() %></span>
	<br><span style="font-size: 14px">제 목 : </span>
	<br><span style="font-size: 14px"><input type="text" name="qesTit" value="<%=vo.getQesTit() %>"></span>
	<br><span style="font-size: 14px">내 용:</span>
	<br><span style="font-size: 14px"><textarea type="text" name="qesCon" value="<%=vo.getQesCon() %>"></textarea></span>
		<input type="submit" value="질문 수정">
	</form> --%>
	 
	
	
	
	
	
	
		    <div class="container">
    <div class="row2">
        <div class="col-md-12">
            <div class="wrapper wrapper-content animated fadeInRight">
    			
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="text-center p-lg">
                        <h2>질문수정</h2>
                    </div>
                </div>
                <!-- 질문답변박스 -->
                
                
			<form action="updateQuestion.do" method="post" enctype="application/x-www-form-urlencoded">
			<input type="hidden" name="qesId" value="<%=vo.getQesId() %>">
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" class="faq-question">제목</a>
                            <input type="text" name="qesTit" value="<%=vo.getQesTit() %>">
                        </div>
                        
                           <div id= context> 내용</div>
                           <textarea type="text" name="qesCon" value="<%=vo.getQesCon() %>"></textarea><br>
							<span><input type="submit" value="질문 수정"></span>
                    </div>
                    </div>
             </form>
                      
                




            </div>
        </div>
    </div>
    </div>
	
	
	
	
	
	
	
	
</body>
</html>