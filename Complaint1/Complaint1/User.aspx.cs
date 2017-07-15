using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.UI.HtmlControls;

public partial class ADRDE2 : System.Web.UI.Page
{
    //int c = 0;
    OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\MISDCC9\\Desktop\\Complaint1\\Complaint.accdb");
    protected void Page_Load(object sender, EventArgs e)
    {

        

        if (Request.QueryString["uname"] != null)
            username.Text = Request.QueryString["uname"];

        if (Request.QueryString["desi"] != null)
            designation.Text = Request.QueryString["desi"];

        if (Request.QueryString["cont"] != null)
            contact.Text = Request.QueryString["cont"];

        if (Request.QueryString["grp"] != null)
            group.Text = Request.QueryString["grp"];

        
        if (!IsPostBack)
        {
            SetDefaultView();
        }

        if (Session["msg"] != null)
            lblmsg.Text = Session["msg"].ToString();
    }

    private void SetDefaultView()
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void On_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (area.SelectedValue)
        {
            case "Technical":
                MultiView1.SetActiveView(View1);
                break;
            case "Residential":
                MultiView1.SetActiveView(View2);
                break;
            }
    }
   /* protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        datetxt.Text = Calendar1.SelectedDate.ToShortDateString();
    }*/
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        String contact1, room1, area1, colony, cmptype1, complaint1, date1, uname;
        contact1 = contact.Text;
        room1 = room.Text;
        area1 = Convert.ToString(area.SelectedItem.Value);
        if(area1 == "Technical")
            colony = Convert.ToString(technical.SelectedItem.Value);
        else
            colony = Convert.ToString(residential.SelectedItem.Value); 
        cmptype1 = Convert.ToString(compType.SelectedItem.Value);
       complaint1 = complaint.Text;
        date1 = datetxt.Text;
       // var time1,time2,time3;
       // DateTime time = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelector2.Hour, TimeSelector2.Minute, TimeSelector2.Second, TimeSelector2.AmPm));

        DateTime t1 = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", Timetxt.Hour, Timetxt.Minute, Timetxt.Second, Timetxt.AmPm));
        DateTime t2 = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelector1.Hour, TimeSelector1.Minute, TimeSelector1.Second, TimeSelector1.AmPm));
        DateTime t3 = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelector2.Hour, TimeSelector2.Minute, TimeSelector2.Second, TimeSelector2.AmPm));
        var time1 = t1- t1.Date;
        var time2 = t2 - t2.Date;
        var time3 = t3 - t3.Date;
        uname = Request.QueryString["uname"];
        String sql = "INSERT INTO UserDetails(Username,Area,Address,RoomNo,Complaint,ComplaintType,Date1,Time1,Time2,Time3) values('"+ uname + "','" + area1 + "','" + colony + "','" + room1 + "','" + complaint1 + "','" + cmptype1 + "','" + date1 + "','" + time1 + "','" + time2 + "','" + time3 + "')";
        OleDbCommand cmd = new OleDbCommand(sql,con);
       
        cmd.ExecuteNonQuery();
        con.Close();
        
        Response.Redirect("AfterSubmission.aspx");

        }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("HOME.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("userdetails.aspx");
    }
}