using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Complaint : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\MISDCC9\\Desktop\\Complaint1\\Complaint.accdb");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
   
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        String useridtxt;
        String passwordtxt;
        String userid1;
        String password;
        String username;
        String group;
        String designation;
        String contact;
        useridtxt = userid.Text;
        passwordtxt = Password1.Text;

        if (DropDownList1.SelectedItem.ToString() == "EMW Admin")
        {
            //con.Open();
            String sql = "Select UserId,Password from EMWtable";
            OleDbCommand cmd = new OleDbCommand(sql, con);
            OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            //con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    userid1 = Convert.ToString(ds.Tables[0].Rows[i]["UserId"].ToString());       //fetch Name clm from db
                    password = Convert.ToString(ds.Tables[0].Rows[i]["Password"].ToString());

                    if (useridtxt == userid1 && passwordtxt == password)
                    {
                        //correct;
                        Response.Redirect("EMWadmin.aspx");
                    }
                    else
                    {
                        Response.Write("<script> alert(\"You Have Entered either Incorrect userid or password\")</script>");
                        break;
                        //  Response.Redirect("HOME.aspx");
                    }
                    
                }
            }

        }


        if (DropDownList1.SelectedItem.ToString() == "User")
        {
            // con.Open();
            String sql = "Select UserId,Password,Username,Designation,Group,Contact from UserTable";
            OleDbCommand cmd = new OleDbCommand(sql, con);
            OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            // con.Close();

            

            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    userid1 = Convert.ToString(ds.Tables[0].Rows[i]["UserId"].ToString());       //fetch Name clm from db
                    password = Convert.ToString(ds.Tables[0].Rows[i]["Password"].ToString());

                   

                    if (useridtxt == userid1 && passwordtxt == password)
                    {
                        //correct;
                        username = Convert.ToString(ds.Tables[0].Rows[i]["Username"].ToString());
                        designation = Convert.ToString(ds.Tables[0].Rows[i]["Designation"].ToString());
                        group = Convert.ToString(ds.Tables[0].Rows[i]["Group"].ToString());
                        contact = Convert.ToString(ds.Tables[0].Rows[i]["Contact"].ToString());

                        
                        // Response.Redirect("USER.aspx?uname=" + username);
                        Response.Redirect("USER.aspx?uname=" + username + "&desi=" + designation + "&grp=" + group + "&cont=" + contact);

                    }
                    else
                    {
                        Response.Write("<script> alert(\"You Have Entered either Incorrect userid or password\")</script>");
                        // break;

                    }
                }
            }
        }


        if (DropDownList1.SelectedItem.ToString() == "CC Admin")
        {
            //con.Open();
            String sql = "Select UserId,Password from CCadmin";
            OleDbCommand cmd = new OleDbCommand(sql, con);
            OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            // con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    userid1 = Convert.ToString(ds.Tables[0].Rows[i]["UserId"].ToString());       //fetch Name clm from db
                    password = Convert.ToString(ds.Tables[0].Rows[i]["Password"].ToString());

                    if (useridtxt == userid1 && passwordtxt == password)
                    {
                        //correct;
                        Response.Redirect("CCadmin.aspx");
                    }
                    else
                    {
                        Response.Write("<script> alert(\"You Have Entered either Incorrect userid or password\")</script>");
                        break;
                        //  Response.Redirect("HOME.aspx");
                    }

                }
            }
            
        }

        con.Close();
    }
    protected void userid_TextChanged(object sender, EventArgs e)
    {

    }
}