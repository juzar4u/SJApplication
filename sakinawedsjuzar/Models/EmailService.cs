using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace sakinawedsjuzar.Models
{
    public class EmailService
    {
        private static EmailService _instace;

        public static EmailService GetInstance
        {
            get
            {
                if (_instace == null)
                {
                    _instace = new EmailService();
                }

                return _instace;
            }
        }


       
        public void sendEmail(string subject, string body, string toEmail, string fromAddress)
        {
            SmtpClient smtpClient = new SmtpClient();

            MailMessage mm = new MailMessage(fromAddress, toEmail,subject, body);
            try
            {
                smtpClient.EnableSsl = false;
                smtpClient.Send(mm);

            }
            catch (Exception ex)
            {
               throw ex;
            }
        }
    }
}