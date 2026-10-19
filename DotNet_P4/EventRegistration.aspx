<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="EventRegistration.aspx.cs"
    Inherits="OnlineEventRegistrationPortal.EventRegistration" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Online Event Registration</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .container {
            width: 500px;
            margin: 30px auto;
            padding: 25px;
            background-color: white;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
        }

        .input {
            width: 95%;
            padding: 8px;
            margin-top: 5px;
        }

        .error {
            color: red;
        }

        .button {
            padding: 10px 20px;
            font-size: 16px;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="container">

<h2>Online Event Registration Portal</h2>

<!-- Name -->

<asp:Label ID="lblName" runat="server"
Text="Full Name:"></asp:Label>

<br />

<asp:TextBox ID="txtName" runat="server"
CssClass="input"></asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvName"
runat="server"
ControlToValidate="txtName"
ErrorMessage="Name is required"
CssClass="error">
</asp:RequiredFieldValidator>

<br /><br />


<!-- Email -->

<asp:Label ID="lblEmail" runat="server"
Text="Email:"></asp:Label>

<br />

<asp:TextBox ID="txtEmail" runat="server"
CssClass="input"></asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvEmail"
runat="server"
ControlToValidate="txtEmail"
ErrorMessage="Email is required"
CssClass="error">
</asp:RequiredFieldValidator>

<asp:RegularExpressionValidator
ID="revEmail"
runat="server"
ControlToValidate="txtEmail"
ErrorMessage="Enter valid email"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
CssClass="error">
</asp:RegularExpressionValidator>

<br /><br />


<!-- Age -->

<asp:Label ID="lblAge" runat="server"
Text="Age:"></asp:Label>

<br />

<asp:TextBox ID="txtAge" runat="server"
CssClass="input"></asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvAge"
runat="server"
ControlToValidate="txtAge"
ErrorMessage="Age is required"
CssClass="error">
</asp:RequiredFieldValidator>

<asp:RangeValidator
ID="rvAge"
runat="server"
ControlToValidate="txtAge"
MinimumValue="18"
MaximumValue="100"
Type="Integer"
ErrorMessage="Age must be between 18 and 100"
CssClass="error">
</asp:RangeValidator>

<br /><br />


<!-- Event -->

<asp:Label ID="lblEvent" runat="server"
Text="Select Event:"></asp:Label>

<br />

<asp:DropDownList ID="ddlEvent"
runat="server"
CssClass="input">

<asp:ListItem Value="">
-- Select Event --
</asp:ListItem>

<asp:ListItem>
Technical Workshop
</asp:ListItem>

<asp:ListItem>
Cultural Festival
</asp:ListItem>

<asp:ListItem>
Sports Competition
</asp:ListItem>

</asp:DropDownList>

<asp:RequiredFieldValidator
ID="rfvEvent"
runat="server"
ControlToValidate="ddlEvent"
InitialValue=""
ErrorMessage="Please select an event"
CssClass="error">
</asp:RequiredFieldValidator>

<br /><br />


<!-- Gender -->

<asp:Label ID="lblGender"
runat="server"
Text="Gender:"></asp:Label>

<br />

<asp:RadioButtonList
ID="rblGender"
runat="server">

<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem>
<asp:ListItem>Other</asp:ListItem>

</asp:RadioButtonList>

<asp:RequiredFieldValidator
ID="rfvGender"
runat="server"
ControlToValidate="rblGender"
ErrorMessage="Please select gender"
CssClass="error">
</asp:RequiredFieldValidator>

<br /><br />


<!-- Terms -->

<asp:CheckBox
ID="chkTerms"
runat="server"
Text="I agree to Terms and Conditions" />

<br /><br />


<!-- Register Button -->

<asp:Button
ID="btnRegister"
runat="server"
Text="Register"
CssClass="button"
OnClick="btnRegister_Click" />

<br /><br />


<!-- Result Message -->

<asp:Label
ID="lblMessage"
runat="server"
Font-Bold="true">
</asp:Label>


<!-- Validation Summary -->

<asp:ValidationSummary
ID="ValidationSummary1"
runat="server"
CssClass="error" />

</div>

</form>

</body>
</html>