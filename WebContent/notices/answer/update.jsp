<%@page import="notices.vo.AnswerVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	AnswerVO vo = (AnswerVO) request.getAttribute("vo");
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
<%-- 	<form action="updateAnswer.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="qesId" value="<%=vo.getQesId() %>">
		<table>
			<tr>
				<td>I D:</td>
				<td><%=vo.getQesId() %></td>
			</tr>
			<tr>
				<td>내 용:</td>
				<td><input type="text" name="ansCon" value="<%=vo.getAnsCon() %>"></td>
			</tr>
		</table>
		<input type="submit" value="답변 수정">
	</form>
	 --%>
	
	
	
	
	
		    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="wrapper wrapper-content animated fadeInRight">
    
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="text-center p-lg">
                        <h2>답변수정</h2>
                    </div>
                </div>
                <!-- 질문답변박스 -->
                <form action="updateAnswer.do" method="post" enctype="multipart/form-data">
                <input type="hidden" name="qesId" value="<%=vo.getQesId() %>">
	                <div class="faq-item">
	                    <div class="row">
	                        <div class="col-md-7">
	                            <a data-toggle="collapse" class="faq-question">Answer</a>
	                            <small>질문자: <strong><%=vo.getQesId() %></strong></small>
	                        </div>
	                        
	                           <div id= context> 
	                           <span style="font-size: 14px"><strong>내 용</strong></span><br>
								<input type="text" name="ansCon" value="<%=vo.getAnsCon() %>">
								<br><input type="submit" value="답변등록">
	                           </div>
	                    </div>
	                    
	                </div>
                </form>
            </div>
        </div>
    </div>
    </div>
	
	
	
	
	
	
	
</body>
</html>