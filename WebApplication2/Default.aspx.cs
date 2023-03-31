using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                var fName = FirstNameTextBox.Text;
                var lName = LastNameTextBox.Text;
                var birthday = BirthdayTextBox.Text;
                var email = EmailTextBox.Text;
                var city = CityDropDown.SelectedValue;

                DataTable dataTable = new DataTable();

                dataTable.Columns.Add("Name", typeof(string));
                dataTable.Columns.Add("Birthday", typeof(string));
                dataTable.Columns.Add("Email", typeof(string));
                dataTable.Columns.Add("City", typeof(string));

                dataTable.Rows.Add(
                    fName + " " + lName,
                    birthday,
                    email,
                    city
                );

                CustomersGridView.DataSource = dataTable;
                CustomersGridView.DataBind();
            }
        }
    }
}