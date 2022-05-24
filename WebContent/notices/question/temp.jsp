<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>





	
	    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="wrapper wrapper-content animated fadeInRight">
    
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="text-center p-lg">
                        <h2>질문게시판</h2>
                        		
	
	
                        <button title="내 질문보기" class="btn btn-primary btn-sm" onClick="location.href='/myQuestion.do'"><span class="bold">내 질문 보기</span></button> 
                        <button title="질문하기" class="btn btn-primary btn-sm" onClick="location.href='/insertQuestion.do'"><span class="bold">질문하기</span></button> 
                    			
		
                    </div>
                </div>
                <!-- 질문답변박스 -->
                
                
				
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" class="faq-question">제목</a>
                            <small>작성자: <strong>김동</strong> <i class="fa fa-clock-o"></i> 날짜</small>
                        </div>
                        
                           <div id= context> 내용</div>
                           
                           
                      
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq1" class="panel-collapse collapse ">
                                <div class="faq-answer">
                                    	
                                    	<p> 답변 </p>
                                         
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                




            </div>
        </div>
    </div>
    </div>
	










</body>
</html>