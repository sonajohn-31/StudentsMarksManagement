<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="StudentsMarksManagement.LoginPage" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style1 {
            width: 371px;
            height: 164px;
        }
        .auto-style2 {
            margin-right: 0px;
        }
    </style>
   
</head>
    <body style="background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ96tLgROwgSTAlpW481lzvb_fyFl3nf4CUEg&usqp=CAU); background-size:cover">
        <form id="form1" runat="server">
        <div>
        <center>
            <h1> 
                <asp:Image ID="Image2" runat="server" Height="110px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDeZWZBM3jE_XRcuI3DI56MVo_FCIVSQ986w&amp;usqp=CAU" Width="99%" BackColor="#FFAEAE" BorderColor="Maroon" BorderStyle="Inset" BorderWidth="6px" CssClass="auto-style2" />
            </h1>
            <hr />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStOMpPN1RaUAGmxmRykKJsAPxabWpt3ibuKg&amp;usqp=CAU" Width="169px" CssClass="auto-style2" />
            <br />
            <table border="1" class="auto-style1" style="background-color: #CC0000; color: #FFFFFF;">
                
                <tr>
                    <td style="background-color: white; color: #CC0000;">Username/MailId</td>
                    <td style="background-color: white; color: #CC0000;"><asp:TextBox ID="TxtUserId" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="background-color: #CC0000">Password</td>
                    <td style="background-color: #CC0000"><asp:TextBox ID="TxtPwd" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="background-color: white; color: #CC0000;">User Type</td>
                    <td style="background-color: white; color: #CC0000;">
                        <asp:DropDownList ID="TxtUserType" runat="server">
                            <asp:ListItem>-- Select User --</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Faculty</asp:ListItem>
                            <asp:ListItem Value="Student">Student</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                <td style="background-color:white"; background-color: #CC0000; color: #FFFFFF;">
                    <asp:Button ID="btnLogin" runat="server" Text="Login " OnClick="btnLogin_Click" ForeColor="#CC0000" />
                </td>
                <td style="background-color:white; background-color: #CC0000; color: #FFFFFF;">
                    <asp:Button ID="btnReset" runat="server" Text="Reset " OnClick="btnReset_Click" ForeColor="#CC0000"  />
                </td>

            </tr>
            <tr>
                <td colspan="2" style="background-color: white">
                    <asp:Label ID="lblinfo" runat="server" ForeColor="Red" />
                </td>
            </tr>
                
            </table>
    </div>
    </form>
</body>
</html>



