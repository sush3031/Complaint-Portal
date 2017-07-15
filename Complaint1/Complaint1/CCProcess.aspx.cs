using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class CCProcess : System.Web.UI.Page
{
   OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\MISDCC9\\Desktop\\Complaint1\\Complaint.accdb");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["c"] != null)
            cmpno1.Text = Session["c"].ToString();
        if(Session["uname"]!=null)
           username1.Text = Session["uname"].ToString();
        if (Session["cmp"] != null)
            complaint1.Text = Session["cmp"].ToString();
        
        con.Open();
        //String uname, cmp;
        //uname = username1.Text;
       // cmp = complaint1.Text;
        String cno = cmpno1.Text;
        String sql = "SELECT Date1,Time1,Worker FROM EMWProcess WHERE ComplaintNo='"+cno+"'";
        OleDbCommand cmd = new OleDbCommand(sql, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            date1.Text = rd[0].ToString();
            time1.Text = rd[1].ToString();
            worker1.Text = rd[2].ToString();

        }
        
       
        if (Session["date"] != null)
            date1.Text = Session["date"].ToString();
        if (Session["time"] != null)
            time1.Text = Session["time"].ToString();
        if (Session["worker"] != null)
            worker1.Text = Session["worker"].ToString();
        if (Session["cs"] != null)
            complaintstatus1.Text = Session["cs"].ToString();

        con.Close(); 
       }


    protected void Button1_Click(object sender, EventArgs e)
    {
          Response.Redirect("CCadmin.aspx");
    }
   
}
       
