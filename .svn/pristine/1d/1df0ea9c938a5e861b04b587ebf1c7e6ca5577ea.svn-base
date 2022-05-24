<%@page import="java.util.List"%>
<%@page import="notices.vo.QuestionVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<QuestionVO> voList = (List<QuestionVO>) request.getAttribute("vo");
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
<%--  
<form action="searchQuestion.do" method="post" enctype="multipart/form-data">
<%
	int voSize = voList.size();
	if(voSize > 0) {
		for(int i = 0; i < voSize; i++) {
%>		
		<br><span style="font-size: 14px">질문아이디 : <%=voList.get(i).getQesId() %></span>
		<br><span style="font-size: 14px">멤버아이디 : <%=voList.get(i).getMemId() %></span>
		<br><span style="font-size: 14px">제 목 : <%=voList.get(i).getQesTit() %></span>
		<br><span style="font-size: 14px">내 용 : <%=voList.get(i).getQesCon() %></span>
		<br><span style="font-size: 14px">일 시 : <%=voList.get(i).getQesDt() %></span>
<%			
		}
	} else {
%>
		<br><span style="font-size: 14px">검색정보가 없습니다.</span>
<%	
	}
%>		
		<br><span style="font-size: 14px"><a href="listQuestion.do">[목록]</a></span>
</form>	 --%>







    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="wrapper wrapper-content animated fadeInRight">
    
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="text-center p-lg">
                        <h2>검색결과</h2>
                        		
                    </div>
                </div>
                
                
                
                
                <form action="searchQuestion.do" method="post" enctype="multipart/form-data">
				<%
					int voSize = voList.size();
					if(voSize > 0) {
						for(int i = 0; i < voSize; i++) {
				%>	
                <!-- 질문답변박스 -->
                
                
				
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" class="faq-question"><%=voList.get(i).getQesTit() %></a>
                            <small>작성자: <strong><%=voList.get(i).getQesId() %></strong> <i class="fa fa-clock-o"></i> <%=voList.get(i).getQesDt() %></small>
                        </div>
                        
                           <div id= context> <%=voList.get(i).getQesCon() %></div>
                           
                           
                    </div>
                    <!-- <div class="row">
                        <div class="col-lg-12">
                            <div id="faq1" class="panel-collapse collapse ">
                                <div class="faq-answer">
                                    	
                                    	<p> 답변 </p>
                                         
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                
                      <%			
								}
							} else {
						%>
								
								
			                <div class="faq-item">
			                    <div class="row">
			                        <div class="col-md-7">
			                            <a data-toggle="collapse" class="faq-question">검색정보가 없습니다.</a>
			                            </div>
				                    </div>
				                </div>
						<%	
							}
						%>



            </div>
        </div>
    </div>
    </div>






</body>
</html>