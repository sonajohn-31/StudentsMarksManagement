<%@ Page Title="" Language="C#" MasterPageFile="~/SMS1.Master" AutoEventWireup="true" CodeBehind="StdInfo.aspx.cs" Inherits="StudentsMarksManagement.StdInfo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <body style="background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBaRHrxDYh3TTV8nt5PA0XCwF-CSEdKHQrHw&usqp=CAU); background-size:cover">

       
     <style type="text/css">
        .auto-style2 {
            text-align: center;
            
        }
        .Mainb{
            width:100%;
    height:550px;
    box-sizing:border-box;
    padding:90px;
    background: rgba(0,0,0,0.5);
        }
        h2{
                color:white;
    padding: 20px;
    text-align:center;
        }
         .auto-style3 {
             font-size: large;
         }
         .auto-style4 {
             font-size: large;
             margin-left: 0px;
         }
    </style>

<div class="Mainb">
         <h2 style="color: #FFFFCC; font-family: Algerian; font-size: xx-large; text-decoration: underline;">Student Info</h2>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="auto-style2">
                    <strong>
            <asp:GridView ID="GridStudent" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="2" CssClass="auto-style4" GridLines="Vertical" >
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
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p9" runat="server" Text='<%#Eval("classname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

               
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
                    </strong>
                </div>
        </div>
         </body>
</asp:Content>


