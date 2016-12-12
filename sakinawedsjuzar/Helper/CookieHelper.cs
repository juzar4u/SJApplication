using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

namespace sakinawedsjuzar.Helper
{
    public static class CookieHelper
    {

        private const string COOKIE_FIELD_NAME = "ObjValue";
        private const string COOKIE_CRYPT_PWS = "FFA74384-A3E1-11E1-867C-39A06188709B";

        public static void SetObjectToCookie<T>(string key, T myObject)
        {
            if (myObject != null)
            {
                ////just test start
                //string strValue1 = myObject.SerializeObject();
                //string strValue2 = CompressAndSerializeObject<string>(strValue1);
                //string strValue3 = CompressAndSerializeObject<T>(myObject);
                ////T retVal = DecompressAndDeSerializeString<T>(strValue3);
                ////just test end


                string strValue = myObject.SerializeObject();
                AddStringToCookie(key, strValue);
            }
            else
            {
                AddStringToCookie(key, "");
            }
        }

        public static T GetObjectFromCookie<T>(string key)
        {
            T retVal = default(T);
            string strValue = GetStringFromCookie(key);
            if (strValue != "")
            {
                retVal = DeSerializeObject<T>(strValue);
                //retVal = DecompressAndDeSerializeString<T>(strValue);
            }
            return retVal;
        }


        private static string GetStringFromCookie(string key)
        {
            string retVal = "";
            HttpCookie myCookie = HttpContext.Current.Request.Cookies[key];
            if (myCookie != null)
            {
                //string keyVal  = HttpUtility.UrlDecode(myCookie.Values[COOKIE_FIELD_NAME]);
                //retVal = CryptoHelper.Decrypt(keyVal ,COOKIE_CRYPT_PWS);
                //retVal = HttpUtility.UrlDecode(myCookie.Values[COOKIE_FIELD_NAME]);
                retVal = HttpUtility.UrlDecode(myCookie.Values[COOKIE_FIELD_NAME]);
            }
            return retVal;
        }

        private static void AddStringToCookie(string key, string strValue)
        {
            HttpCookie myCookie = new HttpCookie(key);

            myCookie.Values.Add(COOKIE_FIELD_NAME, HttpUtility.UrlEncode(strValue));

            myCookie.Expires = DateTime.Now.AddMonths(1);

            myCookie.HttpOnly = true;

            if (!Constants.UseDomainlessCookie)
            {
                myCookie.Domain = Constants.CON_SessionCookieDomain;
            }

            HttpContext.Current.Response.Cookies.Add(myCookie);
        }


        internal static string SerializeObject<T>(this T toSerialize)
        {
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            return serializer.Serialize(toSerialize);
        }

        internal static T DeSerializeObject<T>(string objValue)
        {
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            return serializer.Deserialize<T>(objValue);
        }
    }
}