using sakinawedsjuzar.Helper;
using sakinawedsjuzar.Models;
using sakinawedsjuzar.Models.AccountModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace sakinawedsjuzar.Controllers
{
    public class AccountController : Controller
    {
        //
        // GET: /Account/

        
        public ActionResult Login(LoginModel model)
        {
            UserModel user = Services.GetInstance.GetUserByEmailandPassword(model.Username, model.Password);
            if (user != null)
            {
                AuthHelper.AddSSOCookieIfNotExits(user);
                return Redirect("/");
            }
            return PartialView();
        }


        public bool CheckUser(string username, string password)
        {
            bool isUserExists = false;
            UserModel user = Services.GetInstance.GetUserByEmailandPassword(username, password);
            if (user != null)
                isUserExists = true;

            return isUserExists;
        }

        public ActionResult Logout()
        {
            AuthHelper.ExpireSSOCookie();
            SessionManager.SessionUserObject = null;
            return Redirect("/");
        }

    }
}
