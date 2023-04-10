using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public class Customer
    {
        public string CustomerID { get; set; }
        public string CompanyName { get; set; }
        public string ContactName { get; set; }
    }
    public class CustomerDataAccessLayer
    {
        public static List<Customer> GetAllCustomers()
        {
            List<Customer> listCustomers = new List<Customer>();

            string CS = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT CustomerID, CompanyName, ContactName FROM Customers", con);
                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Customer customer = new Customer();
                    customer.CustomerID = rdr["CustomerID"].ToString();
                    customer.CompanyName = rdr["CompanyName"].ToString();
                    customer.ContactName = rdr["ContactName"].ToString();

                    listCustomers.Add(customer);
                }
            }

            return listCustomers;
    }
}