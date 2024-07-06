using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservations.Reservations
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblArrivalDate.Text = (string)Session["arrival"];
            lblDepartureDate.Text = (string)Session["departure"];
            lblNumberOfPeople.Text = (string)Session["numberOfPeople"];

            lblSpeacialRequests.Text = (string)Session["specialRequests"];

            lblFirstName.Text = (string)Session["first"];
            lblLastName.Text = (string)Session["last"];
            lblEmailAddress.Text = (string)Session["email"];
            lblPhone.Text = (string)Session["phone"];
        }

        protected void cmdConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThankYou.aspx?first" + lblFirstName.Text);
        }

        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservations.aspx");
        }
    }
}