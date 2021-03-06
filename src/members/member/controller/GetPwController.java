package members.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.service.IMemberService;
import members.member.service.MemberServiceImpl;
import members.member.vo.MemberVO;

@WebServlet("/members/getPw.do")
public class GetPwController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/members/getPw.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		IMemberService memService = MemberServiceImpl.getInstance();

		String mem_id = req.getParameter("searchId");
		String mem_name = req.getParameter("searchNm");
		String mem_ph = req.getParameter("searchPh");

		MemberVO vo = memService.getMember(mem_id);
		int num = 0;
		if (vo.getMem_id().equals(mem_id) && vo.getMem_name().equals(mem_name) && vo.getMem_ph().equals(mem_ph)) {
			Random rd = new Random();
			num = rd.nextInt(999999); // 랜덤 난수
			// 네이버일 경우 smtp.naver.com 을 입력합니다.
			// Google일 경우 smtp.gmail.com 을 입력합니다.
			String host = "smtp.naver.com";
			final String username = "qazz6797"; // 네이버 아이디를 입력해주세요. @nave.com은 입력하지 마시구요.
			final String password = "rhwjdgus123!@"; // 네이버 이메일 비밀번호를 입력해주세요.
			int port = 465; // 포트번호 // 메일 내용
			String recipient = vo.getMem_mail(); // 받는 사람의 메일주소를 입력해주세요.
			String subject = "TwoPicGames으로 부터 임시 비밀번호 메일을 받았습니다."; // 메일 제목 입력해주세요.
			String body = vo.getMem_id() + "님의 TwoPicGames 임시 비밀번호는 " + num + "입니다."
					+ "해당 비밀번호에 대한 변경은 계정 - 비밀번호 변경에서 가능합니다"; // 메일 내용 입력해주세요.
			Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 // SMTP 서버 정보 설정
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", port);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.ssl.trust", host); // Session 생성
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				String un = username;
				String pw = password;

				protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
					return new javax.mail.PasswordAuthentication(un, pw);
				}
			});
			session.setDebug(true); // for debug
			Message mimeMessage = new MimeMessage(session); // MimeMessage 생성
			try {
				mimeMessage.setFrom(new InternetAddress("qazz6797@naver.com"));// 발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더
																				// 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요.
				mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); // 수신자셋팅 //.TO
																									// 외에 .CC(참조)
																									// .BCC(숨은참조) 도
																									// 있음
				mimeMessage.setSubject(subject); // 제목셋팅
				mimeMessage.setText(body); // 내용셋팅
				Transport.send(mimeMessage); // javax.mail.Transport.send() 이용
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		vo.setMem_pw(String.valueOf(num));
		memService.updatePw(vo);

		req.setAttribute("vo", vo);
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");

		req.getRequestDispatcher("/members/ChangePwAlarm.jsp").forward(req, resp);
	}
}