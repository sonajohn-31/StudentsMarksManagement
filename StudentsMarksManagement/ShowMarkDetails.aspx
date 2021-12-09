<%@ Page Title="" Language="C#" MasterPageFile="~/SMS1.Master" AutoEventWireup="true" CodeBehind="ShowMarkDetails.aspx.cs" Inherits="StudentsMarksManagement.ShowMarkDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                  <body style="background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR49RvAaCZfr6puNaVuL3K9y30WFUx-6UvnsA&usqp=CAU);background-size:cover">

        <br />
        <div>
            <center>
                <div style="border: 3px groove #CC0000; width:100%; background-color:antiquewhite; font-size: large;" class="auto-style6">
                <asp:HyperLink ID="hy4" runat="server" Text="Quaterly Exam" NavigateUrl="~/ShowMarkDetails.aspx"></asp:HyperLink>       
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <asp:HyperLink ID="hy5" runat="server" Text="Half Yearly Exam" NavigateUrl="~/HMark.aspx"></asp:HyperLink>
                      &nbsp;&nbsp;|&nbsp;&nbsp;
                    <asp:HyperLink ID="hy6" runat="server" Text="Final Exam" NavigateUrl="~/FMark.aspx"></asp:HyperLink>&nbsp;&nbsp;&nbsp;
        </div>
                </center>
            <h2 class="auto-style7" style="color: #003399; font-size: x-large; font-family: Algerian; text-decoration: underline;">Quaterly Exam Details </h2>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="auto-style5">
                    <strong>
                    <asp:GridView ID="GridFaculty" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="auto-style1" Height="177px" >
                        <Columns>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p8" runat="server" Text='<%#Eval("stdname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Class Name">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p8" runat="server" Text='<%#Eval("classname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Exam type">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p1" runat="server" Text='<%#Eval("examtype") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Science">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p2" runat="server" Text='<%#Eval("science") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Maths">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p3" runat="server" Text='<%#Eval("maths") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Computer">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p4" runat="server" Text='<%#Eval("computers") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Total Mark">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p5" runat="server" Text='<%#Eval("total") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Average">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p6" runat="server" Text='<%#Eval("average") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Grade">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p7" runat="server" Text='<%#Eval("grade") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Faculty Name">
                                <ItemTemplate>
                                    <!-- presenting data purpose -->
                                    <asp:Label ID="p8" runat="server" Text='<%#Eval("factname") %>'></asp:Label>
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



    
    