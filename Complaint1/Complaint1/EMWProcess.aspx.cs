using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class EMWProcess : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\MISDCC9\\Desktop\\Complaint1\\Complaint.accdb");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["c"] != null)
            cno.Text = Session["c"].ToString();        
        if(Session["uname"]!=null)
        username.Text = Session["uname"].ToString();
        if (Session["cmp"] != null)
            complaint.Text = Session["cmp"].ToString();
        String cmpno = cno.Text;
       
      }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        String uname, cmp, date1, worker1, time1,check,cno1;
        cno1=cno.Text;
        uname = username.Text;
        cmp = complaint.Text;
        date1 = datetxt.Text;
        worker1 = worker.Text;
        time1 = Convert.ToString(selecttime.SelectedItem.Value);
      //  status1 = Convert.ToString(status.SelectedItem.Value);
        if (CheckBox1.Checked)
            check = "Seen";
        else
            check = "Unseen";
        String sql = "INSERT INTO EMWProcess(ComplaintNo,Username,Complaint,Date1,Time1,Worker,Seen) values('"+cno1+"','"+uname+"','"+cmp+"','"+date1+"','"+time1+"','"+worker1+"','"+check+"')";
        OleDbCommand cmd = new OleDbCommand(sql,con);
        cmd.ExecuteNonQuery();
        con.Close();
        if (CheckBox1.Checked)
        {
            String msg="Your Complaint Has Been Received Please Check Your Status";
            Session["msg"] = msg;
        }
        Response.Redirect("EMWadmin.aspx");
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void selecttime_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}