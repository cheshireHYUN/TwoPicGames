<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 등록</title>

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

	
<!-- 	<br>
	<form action="insertQuestion.do" method="post" enctype="multipart/form-data" style="margin-left: 15px">
		<span style="font-size: 14px"><strong>제 목</strong></span><br>
		<input type="text" name="qesTit" value=""><br><br>
		<span style="font-size: 14px"><strong>내 용</strong></span><br>
		<textarea type="text" name="qesCon" value="" cols="50" rows="10"></textarea><br>
		<input type="submit" value="질문등록">
	</form>	 -->
	
	    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="wrapper wrapper-content animated fadeInRight">
    			
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="text-center p-lg">
                        <h2>질문등록</h2>
                    </div>
                </div>
                <!-- 질문답변박스 -->
                
                
				
   			<form action="insertQuestion.do" method="post" enctype="multipart/form-data" style="margin-left: 15px">
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" class="faq-question">제목</a>
                            <input type="text" name="qesTit" value=""><br><br>
                        </div>
                        
                           <div id= context> 내용</div>
                           <textarea type="text" name="qesCon" value="" cols="50" rows="10"></textarea><br>
							<span><input type="submit" value="등록"></span>
                    </div>
                    </div>
             </form>
                      
<!--                     <div class="row">
                        <div class="col-lg-12">
                            <div id="faq1" class="panel-collapse collapse ">
                                <div class="faq-answer">
                                    	
                                    	<p> 답변 </p>
                                         
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
                




            </div>
        </div>
    </div>
    </div>
	
	
	
	
	
</body>
</html>