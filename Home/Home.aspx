<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Home.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
     <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>

* {
    margin: 0;
    padding: 0;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
.container1 {
    width: 100%;
    height: 100vh;
    background-image: url(ss.jpg);
    background-position: center;
    background-size: cover;
    padding-left: 8%;
    padding-right: 8%;
    box-sizing: border-box;
}

nav{
	width: 100%;
	height: 75px;
	background-color: #060606;
	line-height: 75px;
	padding:0px 10px  ;
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
    padding-top:25px;
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

.row{
    display: flex;
    height: 88%;
    align-items: center;
}

.col{
    flex-basis: 50%;
}

.labelone {
    color: #fff;
    font-size: 90px;
}

.labeltwo {
    color: #fff;
    font-size: 50px;
}

p{
    color: #fff;
    font-size: 11px;
    line-height: 15px;
}

.explore{
    width: 180px;
    color: #000;
    font-size: 12px;
    padding: 12px 0;
    background: #fff;
    border: 0;
    border-radius: 20px;
    outline:none;
    margin-top: 30px;
}

.card{
    width: 200px;
    height: 230px;
    display: inline-block;
    border-radius: 10px;
    padding: 15px 25px;
    box-sizing: border-box;
    cursor: pointer;
    margin: 10px 15px;
    background-position: center;
    background-size: cover;
    transition: transform 0.5s ; 
}

.card1 {
    background-image: url(ins.jpg);
}

.card2 {
    background-image: url(police.png);
}

.card3 {
    background-image: url(ins.jpg);
}

.card4 {
    background-image: url(ins.jpg);
}

.card:hover{
    transform: translateY(-10px);
}

.card1 {   
    text-shadow: 0 0 5px #999;
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
			<li><a href="#" class="active">home</a></li>
			<li><a href="#">about us</a></li>
			<li><a href="#">contact us</a></li>
			<li><asp:Button ID="Button1" runat="server" Text="login" CssClass="login" OnClick="Button1_Click" /></li>
			<li><asp:Button ID="Button2" runat="server" Text="Signup" CssClass="signup" OnClick="Button2_Click" /></li>
		</ul>
	</nav>
		</div>
        <div class ="container1">
            <div class ="row">
                <div class ="col">
                    <asp:Label ID="Label1" runat="server" Text="RDA" CssClass="labelone" ForeColor="White"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Trafic Accident Report" CssClass="labeltwo"></asp:Label>
                    <br />
                    <p>You may obtain a copy of a Texas Peace Officer’s Crash Report (CR-3) (regular or certified) by using our Crash Report Online Purchase System link below. Customers using the online system receive their report(s) immediately if the report is available for purchase. There is a minimal surcharge for using this system. See the sections below for more information on obtaining a crash report online, confidentiality, fees and ordering a crash report by mail.</p><br />
                    <asp:Button ID="Button3" runat="server" Text="Explore" CssClass="explore" />
                </div>
                <div class="col">
                    <div class="card card1">
                        <asp:Label ID="Label3" runat="server" Text="Form" CssClass="card1" ForeColor="#161718"></asp:Label><br />
                        <p>You may obtain a copy of a Texas Peace Officer’s Crash Report (CR-3) (regular or certified) by</p>
                    </div>
                    <div class="card card2">
                        <asp:Label ID="Label4" runat="server" Text="Police" CssClass="card2" ForeColor="#161718"></asp:Label><br />
                        <p>You may obtain a copy of a Texas Peace Officer’s Crash Report (CR-3) (regular or certified) by</p>
                    </div>
                    <div class="card card3">
                        <asp:Label ID="Label5" runat="server" Text="Insurance" CssClass="card3" ForeColor="#161718"></asp:Label><br />
                        <p>You may obtain a copy of a Texas Peace Officer’s Crash Report (CR-3) (regular or certified) by</p>
                    </div>
                    <div class="card card4">
                        <asp:Label ID="Label6" runat="server" Text="Label" CssClass="card4" ForeColor="#161718"></asp:Label><br />
                        <p>You may obtain a copy of a Texas Peace Officer’s Crash Report (CR-3) (regular or certified) by</p>
                    </div>
                </div>
        </div>
  </div>
       <div class="foot">
            <div id="about">
            <h5>Road Development Authority</h5>
            <p>
                The RDA is the premier highway authority in the country and is responsible for the maintenance and development of the National Highway Network, comprising the Trunk (A Class) roads, Main (B Class) roads and Expressways and the planning, design and construction of new highways, bridges and expressways to augment the existing road network
            </p>
                <a href="adminlogin.aspx">Admin Login</a>
                <a href ="ps.aspx">Police/insurance Login</a>
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
