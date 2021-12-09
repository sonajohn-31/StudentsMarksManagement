<%@ Page Title="" Language="C#" MasterPageFile="~/SMS1.Master" AutoEventWireup="true" CodeBehind="AddMarks.aspx.cs" Inherits="StudentsMarksManagement.AddMarks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <body style="background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDFeaxlCgUNIuZFKvwYMGR28WiPcFVOZdJyQ&usqp=CAU);background-size:cover">   
    <style type="text/css">

        .container{
            max-width:700px;
            width:100%;
            background:#fff;
            padding : 25px 30px;
            border-radius:5px;
            margin-left:300px;
            margin-top:70px;
        }
        .container .title{
            font-size:25px;
            font-weight:500;
            position:relative;
        }
        .container .title::before{
            content:'';
            position:absolute;
            left:0;
            bottom:0;
            height:3px;
            width:30px;
            background:linear-gradient(135deg,#71b7e6,#9b59b6);
        }
        .user-deatils{
            display:flex;
            flex-wrap:wrap;
            justify-content:space-between;
                margin: 20px 0 12px 0;
        }
        .input-box{
            margin-bottom:15px;
            
            width: calc(100% / 2 - 20px)
        }
        .details{
            display:block;
            font-weight:500;
            margin-bottom:5px;
        }
        .input{
            height:45px;
            width:100%;
            outline:none;
            border-radius:5px;
            border:1px solid #ccc;
            padding-left:15px;
            font-size:16px;
            border-bottom-width:2px;
            transition: all 0.3s ease;
        }
        input:focus,.input:valid{
            border-color:#9b59b6
        }
        .btinput{
             text-align:center;
            width: 1264px;
            height: 36px;
            outline:none;
            color:#fff;
            border:none;
            font-size:18px;
            font-weight:500;
            border-radius:5px;
            letter-spacing:1px;
            background:linear-gradient(135deg,#71b7e6,#9b59b6);
            


        }
        .btinput:hover{
            text-align:center;
            background: linear-gradient(-135deg,#71b7e6,#9b59b6)
        }
        @media(max-width:584px) {
            .container {
                max-width: 100%;
            }

            .input-box {
                margin-bottom: 15px;
                width: 100%;
            }
            .user-deatils{
                max-height:300px;
                overflow-y:scroll;
            }
            
        }
        .Minb{
            width:100%;
    height:100%;
    box-sizing:border-box;
    padding:90px;
    background: rgba(0,0,0,0.5);
    padding:50px;
        }
        .auto-style5 {
            width: 87%;
            
            box-sizing: border-box;
            padding: 90px;
            padding: 50px;
        }
        .btinput{
            height:45px;
            width:100%;
            outline:none;
            color:#fff;
            border:none;
            font-size:18px;
            font-weight:500;
            border-radius:5px;
            letter-spacing:1px;
            background:linear-gradient(135deg,#71b7e6,#9b59b6);
            margin-top:25px;
            margin-left:10px;


        }
    </style>


     <div class="auto-style5">
    
        <div class="title" style="font-family: Algerian; font-size: xx-large; color: #660033; text-decoration: underline;">Add Marks</div>
        <div class="user-deatils">
        <div class="input-box">
                <span class="details" style="font-family: 'times New Roman', Times, serif; font-size: x-large; color: #660033;">Exam Type</span>
               <asp:DropDownList runat="server" ID="DropMark" CssClass="input" required>
                       <asp:ListItem>Qtrly</asp:ListItem>
                       <asp:ListItem>Halfrly</asp:ListItem>
                       <asp:ListItem>Final</asp:ListItem>
                    </asp:DropDownList>
            </div>
            <div class="input-box" style="font-family: 'times New Roman', Times, serif; font-size: x-large; color: #660033;">
                Name
               <asp:DropDownList runat="server" ID="TextName" CssClass="input" DataTextField="stdname" DataValueField="rollno" required>
                    </asp:DropDownList>
            </div>
           <div class="input-box">
                <span class="details" style="font-family: 'times New Roman', Times, serif; font-size: x-large; color: #660033;">Science</span>
                <asp:TextBox ID="TextSc" runat="server" placeholder="Enter Science Marks" CssClass="input" required></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details" style="font-family: 'times New Roman', Times, serif; font-size: x-large; color: #660033;">Maths</span>
                <asp:TextBox ID="TextMa" runat="server" placeholder="Enter Maths Mark" CssClass="input" required ></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details" style="font-family: 'times New Roman', Times, serif; font-size: x-large; color: #660033;">Computer</span>
                 <asp:TextBox ID="TextCo" runat="server" placeholder="Enter Computer Mark"  CssClass="input" required ></asp:TextBox>
            </div>
            <br/>
            <div class="input-box">
                <span class="details" style="font-family: 'times New Roman', Times, serif; font-size: x-large; color: #660033;">Class</span>
               <asp:DropDownList runat="server" ID="TextCid" CssClass="input" DataTextField="classname" DataValueField="classid" required>
                    </asp:DropDownList>
            </div>
            <br/>
            <div class="input-box">
   
                 <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Mark" CssClass=".btinput" BorderColor="#660033" BorderStyle="Outset" Width="383px" BorderWidth="3px" ForeColor="Maroon" Height="62px" style="margin-left: 365px; margin-top: 11px" />
            </div>
            
        </div>
    </div>
        
    </asp:Content>
