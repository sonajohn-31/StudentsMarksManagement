
<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Students1.aspx.cs" Inherits="StudentsMarksManagement.Students1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
   <body style="background-image:url(data:image/jpeg;base64,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); background-size:cover">
<style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 29px;
            text-align: left;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: left;
        }
            .auto-style9 {
                text-align: center;
                width: 332px;
                height: 341px;
            }
    </style>
    <br />
      <table align="center" class="auto-style9" style="border-color: #CC0000; border-style: groove;">
            <tr>
                <td class="auto-style4" style="background-color: #000099; color: white" >Roll Number </td>
                <td class="auto-style4" style="background-color: #000099; color: white" >
                    <asp:TextBox ID="TextRoll" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRollNo" runat="server" ControlToValidate="TextRoll" ErrorMessage="Student Roll No. must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style4" style="background-color: #FFFFFF" >Student Name </td>
                <td class="auto-style4" style="background-color: #FFFFFF" >
                    <asp:TextBox ID="TextSname" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStdName" runat="server" ControlToValidate="TextSname" ErrorMessage="Student Name must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
               <td class="auto-style4" style="background-color: #000099; color: white" >Gender</td>
                <td class="auto-style4" style="background-color: #000099; color: white" >
                   <asp:DropDownList runat="server" ID="TextGender">
                       <asp:ListItem Enabled="False"></asp:ListItem>
                       <asp:ListItem>-- Select Gender --</asp:ListItem>
                       <asp:ListItem>Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                       <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="TextGEnder" ErrorMessage="Gender must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style4" style="background-color: #FFFFFF" >Address </td>
                <td class="auto-style4" style="background-color: #FFFFFF" >
                    <asp:TextBox ID="TextAdd" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="TextAdd" ErrorMessage="Student Address must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
               <td class="auto-style4" style="background-color: #000099; color: white" >Location</td>
                <td class="auto-style4" style="background-color: #000099; color: white" >
                    <asp:TextBox ID="TextLoc" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLocation" runat="server" ControlToValidate="TextLoc" ErrorMessage="Student Location must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                 <td class="auto-style4" style="background-color: #FFFFFF" >Phone</td>
                <td class="auto-style4" style="background-color: #FFFFFF" >
                    <asp:TextBox ID="TextPh" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="TextPh" ErrorMessage="Student Phone No. must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="background-color: #000099; color: white" >Email </td>
                <td class="auto-style4" style="background-color: #000099; color: white" >
                    <asp:TextBox ID="TextEm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="TextEm" ErrorMessage="Student Email must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                 <td class="auto-style4" style="background-color: #FFFFFF" >Password</td>
                <td class="auto-style4" style="background-color: #FFFFFF" >
                    <asp:TextBox ID="TextPwd" runat="server" class="auto-style7" TextMode="Password" Height="16px" Width="122px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="TextPwd" ErrorMessage="Password must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="background-color: #000099; color: white" >Class ID</td>
                <td class="auto-style4" style="background-color: #000099; color: white" >
                <asp:DropDownList ID="ddlID" DataTextField="classname" DataValueField="classid" runat="server" >
                </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvClassid" runat="server" ControlToValidate="ddlID" ErrorMessage="Student ClassID must be given" Font-Bold="True" ForeColor="Red" ValidationGroup="Vgroup">*</asp:RequiredFieldValidator>
                
            </td>
            </tr>
          <tr>
                <td  colspan="2">
                    <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Student" ForeColor="White" ValidationGroup="Vgroup" BackColor="Blue" Height="38px" Width="133px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelError" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
                       
        </table>
            <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="auto-style3">
            <asp:GridView ID="GridStudent" runat="server" Width="100%" AutoGenerateColumns="false" BorderColor="#CC0000" BorderStyle="Groove" BorderWidth="3px" ForeColor="Blue" BackColor="White"  >
                <AlternatingRowStyle BackColor="#33CCCC" BorderColor="#660033" BorderStyle="Dotted" />
                <Columns>
                    <asp:TemplateField HeaderText="Roll Number ">                     
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("rollno") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Student Name">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p2" runat="server" Text='<%#Eval("stdname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Gender">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p3" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Address">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p4" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location">                     
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p5" runat="server" Text='<%#Eval("location") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Phone">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p6" runat="server" Text='<%#Eval("phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p7" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                
                <asp:TemplateField HeaderText="Class Name">                    
                    <ItemTemplate>  
                        <asp:Label ID="p9" runat="server" Text='<%#Eval("classname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

               
                </Columns>
            </asp:GridView>
                </div>
        </div>
        </body>
</asp:Content>
