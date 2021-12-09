<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="ClassFacultyMapping.aspx.cs" Inherits="StudentsMarksManagement.ClassStudentMapping" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style type="text/css" style="background-image:url(https://www.google.com/search?q=background+image&amp;sxsrf=AOaemvJC0PJkPh0PjcFxHAFEabZWXX5quQ:1637124730720&amp;tbm=isch&amp;source=iu&amp;ictx=1&amp;fir=6biWA5hcSFquvM%252C0YhkbdsB8sWdIM%252C_%253BYVJU4EkuO-hGdM%252C0aKRK2RZxWjguM%252C_%253BRSuwYP4OUpBY1M%252CP0LlCE23eDTuyM%252C_%253BGM5UfQxGtdz0KM%252CQNklfQawUBkyDM%252C_%253Bv88-M_AJ_P6MCM%252CnrS8yXEy4V6zEM%252C_%253BeoUlzzeIQG0prM%252Cb6YOYbz4PifiGM%252C_%253BkXwag02GWx2cZM%252C5tfPhns_thvldM%252C_%253B97ufeg5EvMjbTM%252CSACzUJtVwi2jKM%252C_%253Bs8cnn8j7VwoKqM%252CkmIztsADtIrUXM%252C_%253B3gEnmv1-bD1p2M%252C0aKRK2RZxWjguM%252C_%253BseO4x3ec-jaFjM%252CVBhN99_jMoH1jM%252C_%253BglOou5mBtEMGKM%252CkMZZQGcyyX5myM%252C_%253BxJS1_E8hpQCaSM%252CiBuubM5atW1cQM%252C_%253B45phbHE0cEqCiM%252CepdqqC0qou6e-M%252C_%253Bk2mjqSFN4s7yQM%252CjElKzTBoNCfDyM%252C_%253Bg5mAtYSOAVmH-M%252CLAIZRd0gOwrSbM%252C_&amp;vet=1&amp;usg=AI4_-kRWXPBByyfBAfOidQuyPaqNPzE6Uw&amp;sa=X&amp;ved=2ahUKEwiVyJvwzJ70AhWSqksFHX1mCQsQ9QF6BAgjEAE#imgrc=eoUlzzeIQG0prM); background-size:cover">
        .auto-style1 {
            width: 374px;
            height: 194px;
            margin-left: 67px;
        }
        .auto-style3 {
            width: 1290px;
        }
        .auto-style4 {
            text-align: center;
            margin-left: 40px;
        }
        .auto-style5 {
            width: 1487px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
    <body style="background-image:url(https://media.istockphoto.com/photos/rose-gold-metal-abstract-defocused-background-picture-id1298977572?b=1&k=20&m=1298977572&s=170667a&w=0&h=bmcQRaf25mFPkfe3oXKN6PPswyHhGbqO8A1vYm8WR5o=);">
    <br />
    <br />
    <center>
    <table class="auto-style1" style="border-style: groove; border-color: #CC0000; color: #FFFFFF; background-color: #FF9797">
        <tr>
            <td class="auto-style5" style="border-style: outset; border-color: #CC0000;">Select Faculty :</td>
            <td class="auto-style3" style="border-style: inset; border-color: #CC0000">
                <asp:DropDownList ID="DropDownList1" DataTextField="factname" DataValueField="fid" runat="server"  CssClass="auto-style6" Height="26px" Width="177px">
                    <asp:ListItem Enabled="False"></asp:ListItem>
                    <asp:ListItem>  -- Select Faculty Name --</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: outset; border-color: #CC0000;">Select Class :</td>
            <td class="auto-style3" style="border-style: inset; border-color: #CC0000">
                <asp:DropDownList ID="DropDownList2" DataTextField="classname" DataValueField="classid" runat="server"  Height="19px" Width="165px">
                    <asp:ListItem Enabled="False"></asp:ListItem>
                    <asp:ListItem>-- Select Class Name --</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2" style="border-style: inset; border-color: #CC0000">
                <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Map Class" />
             </td>
                </tr>
                &nbsp;
                <tr>
                <td colspan="2" style="border-style: inset; border-color: #CC0000">
                    <asp:Label ID="lblinfo" runat="server" ForeColor="Red" />
                </td>
            </tr>
  </table>
            <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<div class="auto-style3">
               <asp:GridView ID="gvCls" runat="server" Width="100%" AutoGenerateColumns="false" BorderColor="#CC0000" BorderStyle="Groove" BorderWidth="3px" ForeColor="Maroon" Height="133px" BackColor="White" >
                <AlternatingRowStyle BackColor="lightpink" BorderColor="#660033" BorderStyle="Dotted" />
                    <Columns>
                        <asp:TemplateField HeaderText="CLASS NAME ">                     
                        <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("ClassName") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FACULTY NAME ">                     
                        <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("FactName") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="Maroon" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </div>
                

</asp:Content>
