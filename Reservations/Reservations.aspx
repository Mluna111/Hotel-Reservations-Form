<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="Reservations.Reservations.Reservations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmReservation" runat="server">
        <p align="center"><img src="Images/logo.png" /></p>
        <h1>Reservation Request</h1>
        <p>* means that the field is required</p>

        <h2>Request Data</h2>
        <table>
            <tr>
                <td><img src="Images/required.gif" /></td>
                <td width="5">&nbsp;</td>
                <td>Arrival Date:</td>
                <td width="10">&nbsp;</td>
                <td><asp:TextBox ID="txtArrivalTime" runat="server" TextMode="Date"></asp:TextBox></td>
                <td width="15">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="valArrivalDate" runat="server" ErrorMessage="Please provide a arrival date" ControlToValidate="txtArrivalTime" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
               <td><img src="Images/required.gif" /></td>
               <td width="5">&nbsp;</td>
               <td>Departure Date:</td>
               <td width="10">&nbsp;</td>
               <td><asp:TextBox ID="txtDepartureDate" runat="server" TextMode="Date"></asp:TextBox></td>
               <td width="15">&nbsp;</td>
               <td><asp:RequiredFieldValidator ID="valDepartureDate" runat="server" ErrorMessage="Please provide a departure date" ControlToValidate="txtDepartureDate" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td><img src="Images/required.gif" /></td>
               <td width="5">&nbsp;</td>
               <td>Number of People:</td>
               <td width="10">&nbsp;</td>
               <td><asp:TextBox ID="txtNumberOfPeople" runat="server" TextMode="Number"></asp:TextBox></td>
               <td width="15">&nbsp;</td>
               <td><asp:RequiredFieldValidator ID="valNumberOfPeople" runat="server" ErrorMessage="Please provide the number of people" ControlToValidate="txtNumberOfPeople" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td><img src="Images/required.gif" /></td>
               <td width="5">&nbsp;</td>
               <td>Bed Type:</td>
               <td width="10">&nbsp;</td>
               <td>
                   <asp:RadioButton ID="optKing" runat="server" Text="King" GroupName="BedType" />
                   <asp:RadioButton ID="optTwoQueen" runat="server" Text="Two Queens" GroupName="BedType" />
                   <asp:RadioButton ID="optQueen" runat="server" Text="One Queen" GroupName="BedType" />
               </td>
               <td width="15">&nbsp;</td>
               <td></td>
            </tr>
        </table>

        <h2>Special Requests</h2>
        <p><asp:TextBox ID="txtSpecialRequest" runat="server" TextMode="MultiLine" Columns="55" Rows="7"></asp:TextBox></p>
        
        <h2>Contact Information</h2>
        <table>
            <tr>
                <td><img src="Images/required.gif" /></td>
                <td width="5">&nbsp;</td>
                <td>First Name:</td>
                <td width="10">&nbsp;</td>
                <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                <td width="15">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="valFirstName" runat="server" ErrorMessage="Please provide a First Name" ControlToValidate="txtFirstName" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
               <td><img src="Images/required.gif" /></td>
               <td width="5">&nbsp;</td>
               <td>Last Name:</td>
               <td width="10">&nbsp;</td>
               <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
               <td width="15">&nbsp;</td>
               <td><asp:RequiredFieldValidator ID="valLastName" runat="server" ErrorMessage="Please provide a last name" ControlToValidate="txtLastName" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td><img src="Images/required.gif" /></td>
               <td width="5">&nbsp;</td>
               <td>Email Address:</td>
               <td width="10">&nbsp;</td>
               <td><asp:TextBox ID="txtEmailAddress" runat="server" TextMode="Email"></asp:TextBox></td>
               <td width="15">&nbsp;</td>
               <td><asp:RequiredFieldValidator ID="valEmailAddress" runat="server" ErrorMessage="Must be a valid email address" ControlToValidate="txtEmailAddress" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td><img src="Images/required.gif" /></td>
               <td width="5">&nbsp;</td>
               <td>Phone:</td>
               <td width="10">&nbsp;</td>
               <td><asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="Phone"></asp:TextBox></td>
               <td width="15">&nbsp;</td>
               <td><asp:RequiredFieldValidator ID="valPhoneNumber" runat="server" ErrorMessage="Use format:999-999-9999" ControlToValidate="txtPhoneNumber" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
           </tr>
        </table>

        <p>
            <asp:Button ID="cmdSubmit" runat="server" Text="SUBMIT" OnClick="cmdSubmit_Click" />&nbsp;&nbsp;<asp:LinkButton ID="cmdClear" runat="server" OnClick="cmdClear_Click" CausesValidation="False">CLEAR</asp:LinkButton></p>
        <br /><br /><br />

    </form>
</body>
</html>
