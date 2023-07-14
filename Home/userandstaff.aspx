<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userandstaff.aspx.cs" Inherits="Home.userandstaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>user login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
    		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;400;500&display=swap');
*{
	margin:0px;
	padding:0px;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
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
    margin-top:20px;
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
.navi{
	height:auto;
	width:100%;
}
.report{
	height:680px;
	width:100%;
	border-color:black;
	border-style:solid;
	padding-top:10px;
    background-color:black;
	
}
.foot{
	height:auto;
	width:100%;
	border-color:black;
	border-style:solid;
    background-color:black;
    opacity:0.8;
	
}
 .formcl{
            color:black;
            position:absolute;
            top:50%;
            left:50%;
            background-color:white;
            transform:translate(-50%,-50%);
            width:380px;
            height:auto;
            padding: 60px 40px;
             opacity: 0.6;
             border-radius:20px;
             

        }
 
 td{
      padding-left:15px;
           padding-top:3px;
            font-size:20px;
            text-align:left;
            font-family:Calibri;
            
 }
  #Button3
        {
            border-radius:10px;
            font-size:20px;
        }
  table{
      padding-top:10px;
  }
  h2{
      padding:0;
      margin:0;
      text-align:center;
      color:black;
      font-size:30px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navi">
              <nav>
		<div class="logo">
			<p>Accident Report</p>
		</div>
		<ul>
			<li><a href="" class="active">home</a></li>
			<li><a href="">about us</a></li>
			<li><a href="">contact us</a></li>
			<li><asp:Button ID="Button2" runat="server" Text="Signup" CssClass="signup" OnClick="Button2_Click" /></li>
		</ul>
	</nav>
			</div>
		<div class="report">
             <div class="formcl">
			<h2>LOG-IN</h2>
             <table>
                 <tr>
                     <td>
                         <asp:Label ID="Label1" runat="server" Text="USER NAME" ></asp:Label>
                     </td>
                 </tr>
                  <tr>
                      <td>
                          <asp:TextBox ID="TextBox1" runat="server" Width="277px" Height="25px" placeholder="ENTER YOUR USER NAME"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:TextBox ID="TextBox2" runat="server" Width="277px" Height="25px" placeholder="**"></asp:TextBox>
                      </td>
                  </tr>
                  
                 <tr>
                     <td>

                     </td>
                 </tr>
                  <tr>
                     <td>

                     </td>
                 </tr>
                  <tr>
                      <td>
                          <asp:Button ID="Button3" runat="server" Text="LOG-IN" Height="40px" Width="280px" BackColor="White" OnClick="Button3_Click" />
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
