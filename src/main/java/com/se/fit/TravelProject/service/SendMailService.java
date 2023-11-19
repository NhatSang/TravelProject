package com.se.fit.TravelProject.service;

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
}
