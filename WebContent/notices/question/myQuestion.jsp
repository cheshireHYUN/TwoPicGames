<%@page import="notices.vo.QuestionVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<QuestionVO> vo = (List<QuestionVO>) request.getAttribute("vo");
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
	


<%-- 	<br><span style="font-size: 14px" ><a href="/listQuestion.do" style="margin-left: 15px">[목록]</a></span>
	<br>
<%
	int voSize = vo.size();
	if(voSize > 0) {
		for(int i = 0; i < voSize; i++) {
%>			
	<div  style="margin-left: 15px">
		<br><span style="font-size: 14px">순번 : <%=i+1 %></a></span>
		<br><span style="font-size: 14px">멤버아이디 : <%=vo.get(i).getMemId() %></span>
		<br><span style="font-size: 14px"><strong>제 목 : <%=vo.get(i).getQesTit() %></strong></span>
		<br><span style="font-size: 14px">내 용 : <%=vo.get(i).getQesCon() %></span>
		<br><span style="font-size: 14px">일 자 : <%=vo.get(i).getQesDt() %></span>
		<br><span style="font-size: 14px"><a href="updateQuestion.do?qesId=<%=vo.get(i).getQesId() %>">[질문 수정]</a></span>
		<br><span style="font-size: 14px"><a href="deleteQuestion.do?qesId=<%=vo.get(i).getQesId() %>">[질문 삭제]</a></span>
		<hr>
	</div>	
<%
		}
	} else {
%>		
		<br><span style="font-size: 14px">질문정보가 없습니다.</span>
<%
	}
%>		
		 --%>
			    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="wrapper wrapper-content animated fadeInRight">
    
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="text-center p-lg">
                        <h2>나의 질문 목록</h2>
                    </div>
                </div>
                <!-- 질문답변박스 -->
                
                
                <%
					int voSize = vo.size();
					if(voSize > 0) {
						for(int i = 0; i < voSize; i++) {
				%>		


                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" class="faq-question"><%=vo.get(i).getQesTit() %></a>
                            <small>작성자: <strong><%=vo.get(i).getMemId() %></strong> <i class="fa fa-clock-o"></i> <%=vo.get(i).getQesDt() %></small>
                        </div>
                        
                           <div id= context> <%=vo.get(i).getQesCon() %></div>
                           
                      		<span><button class="selectBtn1" onClick="location.href='/updateQuestion.do?qesId=<%=vo.get(i).getQesId() %>'">수정</button>
								<button class="selectBtn2" onClick="location.href='/deleteQuestion.do?qesId=<%=vo.get(i).getQesId() %>'">삭제</button></span>
                      		
                      		
                    </div>
                    
                  <%
							}
						} else {
					%>		
							<br><span style="font-size: 14px">질문정보가 없습니다.</span>
					<%
						}
					%>	  

                




            </div>
        </div>
    </div>
    </div>
		
		
		
		
		
		
		
		
		
		
		
		
		
</body>
</html>