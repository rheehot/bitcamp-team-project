package com.eomcs.lms.service.impl;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import com.eomcs.lms.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService{
  
  private static final Logger logger = LogManager.getLogger(EmailServiceImpl.class);

  @Autowired JavaMailSender mailSender;
  
  @Override
  @Async("threadPoolTaskExecutor")
  public void send(String subject, String text, String from, String to) {
    MimeMessage message = mailSender.createMimeMessage();
    logger.info("Execute method asynchronously. " + Thread.currentThread().getName());
    try {
      MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
      helper.setSubject(subject);
      helper.setText(text);
      helper.setFrom(from);
      helper.setTo(to);
      
      mailSender.send(message);
    } catch (MessagingException e) {
      e.printStackTrace();
    }
  }
}
