using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class ADRDE3 : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\MISDCC9\\Desktop\\Complaint1\\Complaint.accdb");
    String check ;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["c"] != null)
            cmpno.Text = Session["c"].ToString();
          if(Session["uname"]!=null)
        username.Text = Session["uname"].ToString();
        if (Session["cmp"] != null)
            complaint.Text = Session["cmp"].ToString();
       
        con.Open();
        String uname, cmp;
        uname = username.Text;
        cmp = complaint.Text;
        String sql = "SELECT Date1,Time1,Worker,Seen FROM EMWProcess";
        OleDbCommand cmd = new OleDbCommand(sql,con);
        OleDbDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            date.Text = rd[0].ToString();
            time.Text = rd[1].ToString();
            worker.Text = rd[2].ToString();
         //   complaintstatus.Text = rd[3].ToString();

        }


        if (Session["date"] != null)
        date.Text=Session["date"].ToString();
        if (Session["time"] != null)
        time.Text= Session["time"].ToString();
        if (Session["worker"] != null)
        worker.Text = Session["worker"].ToString();
       
        if (Session["check"] != null)
        CheckBox1.Text=Session["check"].ToString();
        con.Close();
       }


    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
       
        if (CheckBox1.Checked)
            check = "Completed";
        else
            check = "Not Completed";
        String cno=cmpno.Text;
        String sql = "UPDATE UserDetails SET Completed='"+check+"' WHERE ComplaintNo="+cmpno.Text+" ";
        OleDbCommand cmd = new OleDbCommand(sql,con);
        cmd.ExecuteNonQuery();
        con.Close();
    /*    if (CheckBox1.Checked)
        {
            String msg = "Completed";
            Session["msg"] = msg;
        }
        else
        {
            String msg = "Pending";
            Session["msg"] = msg;  
        } */
        Response.Redirect("HOME.aspx");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}