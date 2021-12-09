<%@ Page Title="" Language="C#" MasterPageFile="~/SMS1.Master" AutoEventWireup="true" CodeBehind="FacultyHome.aspx.cs" Inherits="StudentsMarksManagement.FacultyHome" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background-image:url(data:image/jpeg;base64,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);background-size:cover">
    <br/>
    <h1 style="text-align:center; color: #CC0000; font-family: algerian; font-size: x-large; text-decoration: underline;">
          Welcome
           </h1>
    <br />
        <asp:GridView ID="gvFactinfo" runat="server" Width="100%" AutoGenerateColumns="false" CssClass="inner" ForeColor="#660066" BackColor="White" BorderColor="Maroon" BorderStyle="Groove" BorderWidth="6px" >
            <AlternatingRowStyle BackColor="pink" BorderColor="maroon" BorderStyle="Dotted" />
            <Columns>

                <asp:TemplateField HeaderText="Faculty Id">                    
                    <ItemTemplate>  
                        <asp:Label ID="p2" runat="server" Text='<%#Eval("fid")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Faculty Name">                     
                    <ItemTemplate>  
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("factname")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                

                <asp:TemplateField HeaderText="Gender ">                    
                    <ItemTemplate>  
                        <asp:Label ID="p3" runat="server" Text='<%#Eval("gender")%>'></asp:Label>
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
