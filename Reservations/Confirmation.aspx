<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Reservations.Reservations.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation</title>
</head>
<body>
    <form id="form1" runat="server">
        <p align="center"><img src="Images/logo.png" /></p>
        <h1>Confirmation</h1>
        <h2>Request Data</h2>
        <table>
            <tr>

                <td>Arrival Date:</td>
                <td width="10">&nbsp;</td>
                <td><asp:Label ID="lblArrivalDate" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>

               <td>Departure Date:</td>
               <td width="10">&nbsp;</td>
               <td><asp:Label ID="lblDepartureDate" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Number of People:</td>
                <td width="10">&nbsp;</td>
                <td><asp:Label ID="lblNumberOfPeople" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
               <td>Bed Type:</td>
               <td width="10">&nbsp;</td>
               <td>
                   <asp:Label ID="lblBedType" runat="server" Text=""></asp:Label>
               </td>
            </tr>
        </table>

        <h2>Special Requests</h2>
        <p><asp:Label ID="lblSpeacialRequests" runat="server" Text="No special requests"></asp:Label></p>
        
        <h2>Contact Information</h2>
        <table>
            <tr>
                <td>First Name:</td>
                <td width="10">&nbsp;</td>
                <td><asp:Label ID="lblFirstName" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
               <td>Last Name:</td>
               <td width="10">&nbsp;</td>
               <td><asp:Label ID="lblLastName" runat="server" Text=""></asp:Label></td>
           </tr>
           <tr>
               <td>Email Address:</td>
               <td width="10">&nbsp;</td>
               <td><asp:Label ID="lblEmailAddress" runat="server" Text=""></asp:Label></td>
           </tr>
           <tr>
               <td>Phone:</td>
               <td width="10">&nbsp;</td>
               <td><asp:Label ID="lblPhone" runat="server" Text=""></asp:Label></td>
           </tr>
        </table>

        <p>
            <asp:Button ID="cmdConfirm" runat="server" Text="CONFIRM" OnClick="cmdConfirm_Click"/>
            <asp:LinkButton ID="cmdCancel" runat="server" OnClick="cmdCancel_Click">CANCEL</asp:LinkButton>
        </p>

    </form>
</body>
</html>
