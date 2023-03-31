using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var fName = FirstNameTextBox.Text;
            var lName = LastNameTextBox.Text;
            var city = CityDropDown.SelectedValue;
            OutputLabel.Text = fName + " " + lName + " " + city;
            
            List<string> names = new List<string>();
            for (int i = 0; i < 10; i++)
            {
                names.Add(fName + " " + lName + " " + i);
            }
            CustomersGridView.DataSource = names;
            CustomersGridView.DataBind();
        }
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}