<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="StudentsMarksManagement.Faculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background-image:url(https://wallpaperaccess.com/full/1393192.jpg); background-size:cover">
    
    <style style="background-color: #FFC1C1">
        h3 {
            font-family: Calibri;
            font-size: 25pt;
            font-style: normal;
            font-weight: bold;
            color: darkviolet;
            text-align: center;
            text-decoration: underline
        }

        table {
            font-family: Calibri;
            color: white;
            font-size: 11pt;
            font-style: normal;
            font-weight: bold;
            text-align:;
            background-color: darkviolet;
            border-collapse: collapse;
            border: 2px solid navy
        }

            table.inner {
                border: 0px
            }
    .auto-style1 {
        width: 320px;
        height: 364px;
        margin-left: 0px;
    }
        .auto-style4 {
        width: 737px;
    }
        .auto-style5 {
            margin-left: 3px;
        }
        .auto-style7 {
            height: 389px;
            width: 867px;
            margin-left: 0px;
        }
        .auto-style8 {
            width: 164px;
        }
        .auto-style9 {
            text-align:center;
            width: 1264px;
            height: 36px;
        }
    .auto-style11 {
        margin-left: 1px;
    }
    .auto-style13 {
        margin-left: 4px;
    }
    </style>
    <br />
    <br style="background-color: #FFC1C1" />
    <center class="auto-style7">
        <table class="auto-style1" style="border-width: 6px; border-style: groove; border-color: #CC0000; margin-top: 4px; visibility: inherit;" border="1">
            <tr>
                <td class="auto-style4">Faculty Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtFactId" runat="server" Width="131px" CssClass="auto-style4" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFactId" runat="server" ControlToValidate="txtFactId" ErrorMessage="Faculty ID must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #000000; background-color: white">Faculty Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td style="color: #000000; background-color: white" class="auto-style4">
                    <asp:TextBox ID="txtFactName" runat="server" Width="130px" BorderColor="Black" BorderStyle="Inset" CssClass="auto-style13"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFactName" runat="server" ControlToValidate="txtFactName" ErrorMessage="Faculty Name must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            
            <tr>
                <td class="auto-style4">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style4">
                    <asp:DropDownList runat="server" ID="txtGender" Width="141px" CssClass="auto-style13">
                    <asp:ListItem Enabled="False"></asp:ListItem>
                        <asp:ListItem>-- Select Gender --</asp:ListItem>
                       <asp:ListItem>Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                       <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="txtGender" ErrorMessage="Gender must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #000000; background-color: white">Faculty Address&nbsp; :</td>
                <td style="color: #000000; background-color: white" class="auto-style8">
                    <asp:TextBox ID="txtAddress" runat="server" Width="124px" BorderColor="Black" CssClass="auto-style11" />
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Faculty's Address must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Faculty Location :</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtLocation" runat="server" Width="123px" BorderColor="Black" CssClass="auto-style5" />
                     <asp:RequiredFieldValidator ID="rfvLocation" runat="server" ControlToValidate="txtLocation" ErrorMessage="Faculty's Location must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #000000; background-color: white">Faculty Phone&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td style="color: #000000; background-color: white" class="auto-style8">
                    <asp:TextBox ID="txtPhone" runat="server" Width="122px" BorderColor="Black" CssClass="auto-style4" />
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Faculty's Phone No. must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4">Faculty EmailId&nbsp;&nbsp; :</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtEmail" runat="server" Width="123px" CssClass="auto-style5" />
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Faculty's Email must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #000000; background-color: white">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td style="color: #000000; background-color: white" class="auto-style8">
                    <asp:TextBox ID="txtPassword" runat="server" Width="122px" BorderColor="Black" CssClass="auto-style13" />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">
                    <asp:Button ID="btnFact" runat="server" OnClick="btnFact_Click" Text="Add Faculty" BorderColor="Red" BorderStyle="Groove" ValidationGroup="Vgroup"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:Label ID="lblinfo" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        </center>
        <asp:GridView ID="gvFaculty" runat="server" Width="100%" AutoGenerateColumns="false" CssClass="inner" ForeColor="#660066" BackColor="White" BorderColor="Maroon" BorderStyle="Groove" BorderWidth="6px" >
            <AlternatingRowStyle BackColor="pink" BorderColor="maroon" BorderStyle="Dotted" />
            <Columns>

                <asp:TemplateField HeaderText="Faculty Id">                    
                    <ItemTemplate>  
                        <asp:Label ID="p2" runat="server" Text='<%#Eval("fid")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Faculty Name">                     
                    <ItemTemplate>  
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("FactName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                

                <asp:TemplateField HeaderText="Gender ">                    
                    <ItemTemplate>  
                        <asp:Label ID="p3" runat="server" Text='<%#Eval("Gender")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Faculty Address ">                    
                    <ItemTemplate>  
                        <asp:Label ID="p4" runat="server" Text='<%#Eval("Address")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Faculty Location ">                    
                    <ItemTemplate>  
                        <asp:Label ID="p5" runat="server" Text='<%#Eval("Location")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Faculty Phone ">                    
                    <ItemTemplate>  
                        <asp:Label ID="p6" runat="server" Text='<%#Eval("Phone")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Faculty EmailId ">                    
                    <ItemTemplate>  
                        <asp:Label ID="p7" runat="server" Text='<%#Eval("Email")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
 </body>
        </asp:Content>
