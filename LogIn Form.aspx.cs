using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Shandling
{
    public partial class LogIn_Form : System.Web.UI.Page
    {
        DAL obj = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session.RemoveAll();
                //Response.Redirect("Mlogin.aspx");
                Response.Write("logout succesfully");
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                string user = email.Text.Trim();
                string qry = "select accesslevel from signup where email='" +email.Text + "'  AND password='" + password.Text + "'";

                SqlDataReader dr = obj.login(qry);

                if (dr.Read())
                {
                    Session["user"] = user;
                    int acceslvl = 0;
                    acceslvl = Convert.ToInt32(dr.GetValue(0).ToString());
                    Session["acceslevel"] = acceslvl;

                    if (acceslvl == 1)
                    {
                        Response.Write("inside access level 1");
                    }
                    if (acceslvl == 2)
                    {
                        //Response.Write("inside access level 2");

                        Response.Redirect("MManager.aspx");
                    }
                    if (acceslvl == 3)
                    {
                        Response.Redirect("employee.aspx");
                    }

                }
                else
                {
                    Response.Write("invalid entry");
                }

            }

            catch (Exception ex)
            {
                Response.Write("error while performing");
            }
        }
    }
}