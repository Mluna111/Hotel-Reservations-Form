using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservations.Reservations
{
    public partial class Reservations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) 
            {
                Session["arrival"] = txtArrivalTime.Text;
                Session["departure"] = txtDepartureDate.Text;
                Session["numberOfPeople"] = txtNumberOfPeople.Text;

                Session["specialRequests"] = txtSpecialRequest.Text;

                Session["first"] = txtFirstName.Text;
                Session["last"] = txtLastName.Text;
                Session["email"] = txtEmailAddress.Text;
                Session["phone"] = txtPhoneNumber.Text;

                Response.Redirect("Confirmation.aspx");
            }
        }

        protected void cmdClear_Click(object sender, EventArgs e)
        {
            txtArrivalTime.Text = String.Empty;
            txtDepartureDate.Text = String.Empty;
            txtNumberOfPeople.Text = String.Empty;

            optKing.Checked = false;
            optQueen.Checked = false;
            optTwoQueen.Checked = false;

            txtSpecialRequest.Text = String.Empty;

            txtFirstName.Text = String.Empty;
            txtLastName.Text = String.Empty;
            txtEmailAddress.Text = String.Empty;
            txtPhoneNumber.Text = String.Empty;

        }
    }
}