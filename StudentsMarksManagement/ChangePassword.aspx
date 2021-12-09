<%@ Page Title="" Language="C#" MasterPageFile="~/SMS1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="StudentsMarksManagement.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                    <body style="background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxzVjzG_zejoHrcOZ9dJdcNyZRvNgntsIzzw&usqp=CAU);background-size:cover">
    <style type="text/css">

        .container{
            max-width:700px;
            width:100%;
            background:#fff;
            padding : 25px 30px;
            border-radius:5px;
            margin-left:300px;
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
            height:45px;
            width:200px;
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
        .btinput:hover{
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
            width: 88%;
            height: 380px;
            box-sizing: border-box;
            padding: 90px;
            padding: 50px;
        }
    </style>
    <div class="auto-style5">
    
        <div class="title" style="font-family: Algerian; font-size: xx-large; font-weight: 200; color: #400040; text-decoration: underline;">Change Password</div>
        <br />
        <br />
        <div class="user-deatils">
            <div class="input-box">
                <span class="details" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #660066">Enter Your Old Password</span>
                <asp:TextBox ID="TextOp" runat="server" placeholder="Enter Your Old Password" CssClass="input" TextMode="Password" required Width="460px" BorderColor="#660066" BorderStyle="Groove" BorderWidth="3px" ></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #660066">Enter New Password</span>
                 <asp:TextBox ID="TextAdd" runat="server" placeholder="Enter Your New Password"  CssClass="input" TextMode="Password" required Width="460px" BorderColor="#660066" BorderStyle="Groove" BorderWidth="3px" ></asp:TextBox>
            <div class="input-box">
                 <asp:Button ID="ButtonAdd" runat="server" Text="Change Password" CssClass="btinput" OnClick="ButtonAdd_Click" BorderColor="#660066" BorderStyle="Double" BorderWidth="2px" />
            </div>
            
        </div>
        </div>
    
    </body>
</asp:Content>
