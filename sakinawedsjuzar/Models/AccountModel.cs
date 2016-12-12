using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace sakinawedsjuzar.Models.AccountModel
{
    public class LoginModel
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }

    public class UserModel
    {
        public int UserID { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Fullname { get; set; }
        public DateTime CreatedOn { get; set; }
        public int UserRoleID { get; set; }
        public string ProfilePictureUrl { get; set; }
    }
}