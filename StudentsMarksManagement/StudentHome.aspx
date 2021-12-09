<%@ Page Title="" Language="C#" MasterPageFile="~/SMS2.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="StudentsMarksManagement.StudentHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background-image:url(https://i.pinimg.com/736x/32/ed/db/32eddb142e5b76bb86259e5b997a9c55.jpg);background-size:cover">
<h1 style="text-align:center; color: #CC0000; font-family: algerian; font-size: x-large; text-decoration: underline;">
          Welcome
           </h1>
        <asp:Label ID="lblinfo" runat="server"></asp:Label>
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
                        <asp:Label ID="p9" runat="server" Text='<%#Eval("ClassName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

               
                </Columns>
            </asp:GridView>
                </div>
        
        </body>
</asp:Content>