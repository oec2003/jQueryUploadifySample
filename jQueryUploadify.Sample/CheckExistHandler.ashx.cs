using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace jQueryUploadify.WebForm.Sample
{
    /// <summary>
    /// UploadHandler 的摘要说明
    /// </summary>
    public class CheckExistHandler : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Charset = "utf-8";

            string fileName = context.Request["filename"];
            if(string.IsNullOrEmpty(fileName))
            {
                context.Response.Write("0");
            }

            string filePath =
                HttpContext.Current.Server.MapPath(@context.Request["folder"]) + "\\"+ fileName;
            //uploadPath += "UploadFile";
            if (File.Exists(filePath))
            {
                //下面这句代码缺少的话，上传成功后上传队列的显示不会自动消失
                context.Response.Write("1");
            }
            else
            {
                context.Response.Write("1");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}