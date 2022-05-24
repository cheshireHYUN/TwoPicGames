<%@page import="members.member.vo.MemberVO"%>
<%@page import="notices.vo.AnswerVO"%>
<%@page import="notices.vo.QuestionVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<QuestionVO> qesList = (List<QuestionVO>) request.getAttribute("qesList");
	List<AnswerVO> ansList = (List<AnswerVO>) request.getAttribute("ansList");
String admin = (String) request.getAttribute("admin");
MemberVO member = (MemberVO) session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 목록</title>
<head>
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

    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="wrapper wrapper-content animated fadeInRight">
    
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="text-center p-lg">
                        <h2>질문게시판</h2>
                        		<%
									if (member != null) {
								%>
                        
                    			<%
									}
								%>
								
								
									<form action="searchQuestion.do" method="post">
										<br> <span style="font-size: 14px"><input type="text"
											name="searchTit" value=""> <input type="submit"
											value="[질문 검색]"></span> <br> <span style="font-size: 14px"><strong>[질문검색]
												예시) 1.로그인 2.회원가입 3.서버</strong></span>
										<hr>
									</form>
	
						<%
							if(admin == null && member != null){
						%>
                        <button title="내 질문보기" class="btn btn-primary btn-sm" onClick="location.href='/myQuestion.do'"><span class="bold">내 질문 보기</span></button> 
                        <%
                        	}
							if(member != null) {
                        %>
                        <button title="질문하기" class="btn btn-primary btn-sm" onClick="location.href='/insertQuestion.do'"><span class="bold">질문하기</span></button>
                        <%
							}
                        %> 
                    			
		
                    </div>
                </div>
                <!-- 질문답변박스 -->
                
                <%
					int qesSize = qesList.size();
				if (qesSize > 0) {
					for (int i = 0; i < qesSize; i++) {
				%>
				
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" class="faq-question"><%=qesList.get(i).getQesTit()%></a>
                            <small>작성자: <strong><%=qesList.get(i).getMemId()%></strong> <i class="fa fa-clock-o"></i> <%=qesList.get(i).getQesDt()%></small>
                        </div>
                        
                           <div id= context> <%=qesList.get(i).getQesCon()%></div>
                           
                           
                        <%
								if(admin != null || member.getMem_id().equals(qesList.get(i).getMemId())) {
						%>
								<br>
										
								<span>
								<button class="selectBtn1" onClick="location.href='/updateQuestion.do?qesId=<%=qesList.get(i).getQesId() %>'">수정</button>
								<button class="selectBtn2" onClick="location.href='/deleteQuestion.do?qesId=<%=qesList.get(i).getQesId() %>'">삭제</button>
								</span>
						<%
								}
						%>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq1" class="panel-collapse collapse ">
                                <div class="faq-answer">
                                    	
                                    	 <%	if(ansList.isEmpty()==false){
                                    			for(AnswerVO vo : ansList){
                                   					if((vo.getQesId()).equals(qesList.get(i).getQesId())) {
                                   						%>
                                    					<p>[답변] <%=vo.getAnsCon()%></p>
                                    			<%	}
                                       			}
                                    			%>
                                    			<%
														if(admin != null) {
												%>
												<span>
													<button class="selectBtn2" onClick="location.href='insertAnswer.do?qesId=<%=qesList.get(i).getQesId() %>'">답변달기</button>
													<button class="selectBtn2" onClick="location.href='updateAnswer.do?qesId=<%=qesList.get(i).getQesId() %>'">답변수정</button>
													<button class="selectBtn2" onClick="location.href='deleteAnswer.do?qesId=<%=qesList.get(i).getQesId() %>'">답변삭제</button>
												</span>
												<%
													}
												%>
                                    		<%} else {
                                    			%>
                                    			<p>[답변대기중]</p>
                                    			<%
														if(admin != null) {
												%>
                                    			<span>
													<button class="selectBtn2" onClick="location.href='insertAnswer.do?qesId=<%=qesList.get(i).getQesId() %>'">답변달기</button>
													<button class="selectBtn2" onClick="location.href='updateAnswer.do?qesId=<%=qesList.get(i).getQesId() %>'">답변수정</button>
													<button class="selectBtn2" onClick="location.href='deleteAnswer.do?qesId=<%=qesList.get(i).getQesId() %>'">답변삭제</button>
												</span>
												<%
														}
												%>
                                    		<%} %>
                                         
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
				<%
						}
					}
				%>




            </div>
        </div>
    </div>
    </div>













</body>
</html>