package com.se.fit.TravelProject.service;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class SendMailService {
	@Autowired
	private JavaMailSender javaMailSender;

	private void sendEmail(String toEmail, String subject, String message) {
		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);

		try {
			helper.setTo(toEmail);
			helper.setSubject(subject);
			helper.setText(message);

			javaMailSender.send(mimeMessage);

			System.out.println("Email sent successfully!");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	public void sendBookingConfirmationEmail(String toEmail, String name) {
		String subject = " Xác Nhận Đặt Tour Thành Công";
		String message = "\r\n" + "Chào "+ name +",\r\n" + "\r\n"
				+ "Chúc mừng! Chúng tôi xác nhận rằng bạn đã đặt tour thành công với chúng tôi.\r\n"
				+ "Chúng tôi rất mong đợi sự tham gia của bạn và chắc chắn rằng bạn sẽ có một trải nghiệm tuyệt vời cùng chúng tôi.\r\n"
				+ "\r\n"
				+ "Chi tiết hóa đơn và thông tin thanh toán sẽ được gửi đến bạn trong thời gian sớm nhất. Hãy kiểm tra hộp thư đến của bạn để cập nhật thông tin.\r\n"
				+ "\r\n"
				+ "Nếu bạn có bất kỳ câu hỏi hoặc cần hỗ trợ thêm, đừng ngần ngại liên hệ với chúng tôi tại Travel@support.vn.lo hoặc số điện thoại 0990 999 999.\r\n"
				+ "\r\n" + "Cảm ơn bạn đã chọn chúng tôi để trải nghiệm hành trình đặc biệt này!\r\n" + "\r\n"
				+ "Trân trọng,\r\n" + "TRAVEL.LO";

		sendEmail(toEmail, subject, message);
	}
	public void sendRegisterSuccess(String toEmail, String name, String user, String pass) {
		String subject = "Xác Nhận Đăng Ký Tài Khoản Thành Công";
		String message = "Chào "+name+",\r\n"
				+ "\r\n"
				+ "Chúc mừng! Chúng tôi rất vui mừng thông báo rằng bạn đã đăng ký thành công tài khoản trên Travel.Lo.\r\n"
				+ "\r\n"
				+ "Dưới đây là một số thông tin về tài khoản của bạn:\r\n"
				+ "\r\n"
				+ "Tài khoản: " + user + " \r\n"
				+ "Mật khẩu: " + pass + " \r\n"
				+ "Ngày Đăng Ký:  " + LocalDate.now() + "\r\n"
				+ "\r\n"
				+ "Hãy giữ lại thông tin này cho mọi công việc liên quan đến tài khoản của bạn.\r\n"
				+ "\r\n"
				+ "Nếu bạn có bất kỳ câu hỏi hoặc cần hỗ trợ, đừng ngần ngại liên hệ với chúng tôi tại Travel@support.vn.lo hoặc số điện thoại 0999 999 999.\r\n"
				+ "\r\n"
				+ "Cảm ơn bạn đã tham gia cùng chúng tôi! Chúc bạn có những trải nghiệm tuyệt vời trên Travel.lo .\r\n"
				+ "\r\n"
				+ "Trân trọng,\r\n"
				+ "TRAVEL.LO";
		
		sendEmail(toEmail, subject, message);
	}
}
