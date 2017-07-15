using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class EMWadmin : System.Web.UI.Page
{
    OleDbConnection con=new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\MISDCC9\\Desktop\\Complaint1\\Complaint.accdb");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("HOME.aspx");
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        String b = GridView1.SelectedRow.Cells[1].Text;
        Session["c"] = b.ToString();
        String a = GridView1.SelectedRow.Cells[2].Text;
        Session["uname"] = a;
        String c = GridView1.SelectedRow.Cells[6].Text;
        Session["cmp"] = c;

       Response.Redirect("EMWProcess.aspx");
      
    }
}