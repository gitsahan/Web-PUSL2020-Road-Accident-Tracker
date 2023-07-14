﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerForm1.aspx.cs" Inherits="Home.registerForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;400;500&display=swap');
*{
	padding:0px;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
        }
nav{
	width: 100%;
	height: 75px;
	background-color: #060606;
	line-height: 75px;
	padding:0px 100px;
	position:fixed;
	z-index: 1;
}
nav .logo{
	font-size: 16px;
	font-weight: bold;
	letter-spacing: 1.5px; 
}
nav .logo p{
	float: left;
	color:#fff;
	text-transform: uppercase;
}
nav ul{
	float: right;
}
nav ul li{
	display: inline-block;
	list-style: none;
}
nav ul li a{
	color:#fff;
	text-decoration: none;
	font-size: 14px;
	text-transform: uppercase;
	padding:0px 32px;
}
nav ul li a:hover{
	color:#c0d96f;
}
nav ul li .active{
	color:#c0d96f;
}
.login {

    width: 100px;
    color: black;
    font-size: 14px;
    padding: 8px 0;
    background: gold;
    border: 0;
    border-radius: 20px;
    outline: none;
    margin-top: 30px;
}
.signup {
    width: 100px;
    color: black;
    font-size: 14px;
    padding: 8px 0;
    background: gold;
    border: 0;
    border-radius: 20px;
    outline: none;
    margin-top: 30px;
}
.container{
	width :100%;
	height:75px;
   
}
.box{
    background-color:#fff;
    width:670px;
    height:875px;
    border-radius: 10px;
    box-sizing: border-box;
    background-size: cover;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    margin-left:auto; 
    margin-right:auto; 
    background-color:#F2F3F4;
    margin-top:auto;
    padding:20px;
}
.bigbox{
    width: 100%;
    height: 175vh;
    background-color:#A6ACAF;
   padding:60px;
}

        .submit {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            width: 180px;
            color: #000;
            font-size: 12px;
            padding: 12px 0;
            background:gold;
            border-radius: 20px;
            outline: none;
            margin-top: 30px;
            height: 45px;
        }
        .cancel{
             width: 180px;
    color: #000;
    font-size: 12px;
    padding: 12px 0;
    background: gold;
    border: 0;
    border-radius: 20px;
    outline:none;
    margin-top: 30px;
        }
footer{
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background: #111;
    height: auto;
    width: 100vw;
    padding-top: 10px;
    color: white;
    
}
#about{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    text-align: center;
    color:white;
    
}
h5{
     font-size: 2.1rem;
    font-weight: 500;
    text-transform: capitalize;
    line-height: 3rem;
}
p{
    max-width: 500px;
    margin: 10px auto;
    line-height: 28px;
    font-size: 12px;
    color: white;
}
.socials{
    list-style: none;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 1rem 0 3rem 0;
}
.socials li{
    margin: 0 10px;
}

.socials a{
    text-decoration: none;
    color: white;
    border: 1.1px solid white;
    padding: 5px;
    border-radius: 50%;
}

.socials a i{
    font-size: 1.1rem;
    width: 20px;
    transition: color .4s ease;
}

.socials a:hover i{
    color: gray;
}
.foot{
	height:auto;
	width:100%;
	border-color:black;
	border-style:solid;
    background-color:black;
    opacity:0.8;
	
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="container">
		<nav>
		<div class="logo">
			<p>Accident Report</p>
		</div>
		<ul>
			<li><a href="" class="active">home</a></li>
			<li><a href="">about us</a></li>
			<li><a href="">contact us</a></li>
			<li><asp:Button ID="Button1" runat="server" Text="login" CssClass="login" OnClick="Button1_Click" /></li>
		</ul>
	</nav>
		</div>
        <div class="bigbox">
        <div class="box">
            <table>
                        <tr>
                            <th>
                                <br />
                                <h3>Owner Information</h3>
                                <br />
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem> </asp:ListItem>
                                    <asp:ListItem>Mr. </asp:ListItem>
                                    <asp:ListItem>Mrs.</asp:ListItem>
                                    <asp:ListItem>Miss.</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textname" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textuser" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textpassword" runat="server" Width="308px"  ></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textaddress" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textpnumber" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="NIC"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textnic" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Email Address"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textemail" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <br />
                                <h3>License Information</h3>     <br />
                            </th>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="License Plate State And Number"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textlnumber" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Title/Document Number"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Texttnumber" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <th>
                                <br />
                                <h3>Vehical Information</h3>
                                <br />
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Vehical Identification Number"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textvnumber" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Year"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textyear" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="Make"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textmake" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text="Body Style"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textbstyle" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text="Modle"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Textmodle" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="submit" runat="server" Text="Submit" CssClass="submit" OnClick="Button3_Click"/>
                                <asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="cancel" OnClick="Button4_Click" />
                            </td>
                        </tr>
                    </table>
        </div>
            </div>
        <div class="foot">
            <div id="about">
            <h5>Road Development Authority</h5>
            <p>
                The RDA is the premier highway authority in the country and is responsible for the maintenance and development of the National Highway Network, comprising the Trunk (A Class) roads, Main (B Class) roads and Expressways and the planning, design and construction of new highways, bridges and expressways to augment the existing road network
            </p>
            <ul class="socials">
                <li><a href=":http://www.rda.gov.lk/source/contact_mgt.htm"><i class="fa fa-phone" aria-hidden="true"></i></a></li>
                
    <li><a href="https://m.facebook.com/profile.php?id=100064662220259&sk=photos&_rdr"><i class="fa fa-facebook"></i></a></li>
    <li><a href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjy7IbkzMr3AhVGEaYKHWBhCG8QFnoECA8QAQ&url=http%3A%2F%2Fwww.rda.gov.lk%2F&usg=AOvVaw36Ek2s9w6Y0uraMe4UdLwB"><i class="fa fa-google-plus"></i></a></li>
    
    </ul>
                <h6> Address :  216 Denzil Kobbekaduwa Mawatha, Battaramulla 10120</h6>
                <h6> Contact us : 011 2862795</h6>

        </div>
		</div>
    </form>
</body>
</html>
