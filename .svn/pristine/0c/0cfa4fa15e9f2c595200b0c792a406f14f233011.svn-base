package members.captcha;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/capcha3.do")
public class CaptchaImageController extends HttpServlet{

	private static final long serialVersionUID = 1L;

		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			 String clientId = "mIjP3Z7wSwYakJKsRXVq"; //애플리케이션 클라이언트 아이디값";
		        String clientSecret = "7k92wosdwb"; //애플리케이션 클라이언트 시크릿값";

		        String key = "4vG4sf9pEGoR3eE3"; // https://openapi.naver.com/v1/captcha/nkey 호출로 받은 키값
		        String apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;

		        Map<String, String> requestHeaders = new HashMap<>();
		        requestHeaders.put("X-Naver-Client-Id", clientId);
		        requestHeaders.put("X-Naver-Client-Secret", clientSecret);
//		        String responseBody = myGet(apiURL,requestHeaders);
//
//		        System.out.println(responseBody);
		
		        HttpURLConnection con = connect(apiURL);
		        try {
		            con.setRequestMethod("GET");
		            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
		                con.setRequestProperty(header.getKey(), header.getValue());
		            }

		            int responseCode = con.getResponseCode();
		            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
		            	System.out.println("이미지 정상 호출....");
		                InputStream is = con.getInputStream();
		                
		                int read;
		    	        byte[] bytes = new byte[1024];
		    	        // 랜덤한 이름으로  파일 생성
		    	        
		    	        try(
		    	        	OutputStream outputStream = resp.getOutputStream()){
		    	            
		    	            while ((read = is.read(bytes)) != -1) {
		    	                outputStream.write(bytes, 0, read);
		    	            }
		    	           resp.flushBuffer();
		    	        } catch (IOException e) {
		    	            throw new RuntimeException("이미지 캡차 파일 생성에 실패 했습니다.",e);
		    	        } 
		            } else { // 에러 발생
		            	System.out.println("이미지 호출 오류....");
		                //return error(con.getErrorStream());
		            }
		        } catch (IOException e) {
		            throw new RuntimeException("API 요청과 응답 실패", e);
		        } finally {
		            con.disconnect();
		        }
		}
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			doPost(req, resp);
		}
		
		private String myGet(String apiUrl, Map<String, String> requestHeaders){
	        HttpURLConnection con = connect(apiUrl);
	        try {
	            con.setRequestMethod("GET");
	            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
	                con.setRequestProperty(header.getKey(), header.getValue());
	            }

	            int responseCode = con.getResponseCode();
	            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
	            	System.out.println("이미지 정상 호출....");
	                return getImage(con.getInputStream());
	            } else { // 에러 발생
	            	System.out.println("이미지 호출 오류....");
	                return error(con.getErrorStream());
	            }
	        } catch (IOException e) {
	            throw new RuntimeException("API 요청과 응답 실패", e);
	        } finally {
	            con.disconnect();
	        }
	    }

	    private HttpURLConnection connect(String apiUrl){
	        try {
	            URL url = new URL(apiUrl);
	            return (HttpURLConnection)url.openConnection();
	        } catch (MalformedURLException e) {
	            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
	        } catch (IOException e) {
	            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
	        }
	    }

	    private String getImage(InputStream is){
	        int read;
	        byte[] bytes = new byte[1024];
	        // 랜덤한 이름으로  파일 생성
	        String filename = Long.valueOf(new Date().getTime()).toString();
	        File f = new File("d:/d_other/"+ filename + ".jpg");
	        try(OutputStream outputStream = new FileOutputStream(f)){
	            f.createNewFile();
	            while ((read = is.read(bytes)) != -1) {
	                outputStream.write(bytes, 0, read);
	            }
	            return "이미지 캡차가 생성되었습니다.";
	        } catch (IOException e) {
	            throw new RuntimeException("이미지 캡차 파일 생성에 실패 했습니다.",e);
	        }
	    }

	    private String error(InputStream body) {
	        InputStreamReader streamReader = new InputStreamReader(body);

	        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
	            StringBuilder responseBody = new StringBuilder();

	            String line;
	            while ((line = lineReader.readLine()) != null) {
	                responseBody.append(line);
	            }

	            return responseBody.toString();
	        } catch (IOException e) {
	            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
	        }
	    }
}
