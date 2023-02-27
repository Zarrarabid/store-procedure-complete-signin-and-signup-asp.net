using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Shandling
{
    public partial class SignUp_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void SIGNUP_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/image/") + Path.GetFileName(FileUpload1.FileName));
            String link = "image/" + Path.GetFileName(FileUpload1.FileName);
            string qry = "insert into signup values('" + id.Text + "','" + email.Text + "','" + password.Text + "','" + cpassword.Text + "','" + accesslevel.Text + "','" + name.Text + "','" + link + "')";
            DAL obj = new DAL();
            obj.udl(qry);
            id.Text = "";
            email.Text = "";
            password.Text = "";
            cpassword.Text = "";
            accesslevel.Text = "";
            name.Text = "";
            link = "";
            string message = "Your details have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            //Response.Redirect("login.aspx");
        }
    }
}