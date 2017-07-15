using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("HOME.aspx");
    }
    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {
       
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        String b = GridView2.SelectedRow.Cells[1].Text;
        Session["c"] = b.ToString();
        String a = GridView2.SelectedRow.Cells[2].Text;
        Session["uname"] = a;
        String c = GridView2.SelectedRow.Cells[6].Text;
        Session["cmp"] = c;
        String d=GridView2.SelectedRow.Cells[12].Text;
        Session["cs"] = d;
        Response.Redirect("CCProcess.aspx");

    }
}