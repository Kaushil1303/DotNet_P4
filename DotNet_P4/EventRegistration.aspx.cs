using System;

namespace OnlineEventRegistrationPortal
{
    public partial class EventRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (!chkTerms.Checked)
                {
                    lblMessage.ForeColor =
                        System.Drawing.Color.Red;

                    lblMessage.Text =
                        "Please accept Terms and Conditions.";

                    return;
                }

                lblMessage.ForeColor =
                    System.Drawing.Color.Green;

                lblMessage.Text =
                    "Registration Successful! Welcome " +
                    txtName.Text +
                    ". You are registered for " +
                    ddlEvent.SelectedItem.Text;
            }
        }
    }
}