using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;

namespace ASPNETWebformsSchulung2020.Modul16
{
    /// <summary>
    /// Zusammenfassungsbeschreibung für thumbnail
    /// </summary>
    public class thumbnail : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var bild = context.Request.QueryString[0];
            var img = new Bitmap(context.Server.MapPath("~/modul16/bilder/") + bild);
            var thumb = img.GetThumbnailImage(600, 400, null, IntPtr.Zero);
            img.Dispose();
            var stream = new MemoryStream();
            thumb.Save(stream, ImageFormat.Jpeg);
            var buffer = stream.ToArray();


            context.Response.ContentType = "image/jpg";
            context.Response.OutputStream.Write(buffer,0,buffer.Length);
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