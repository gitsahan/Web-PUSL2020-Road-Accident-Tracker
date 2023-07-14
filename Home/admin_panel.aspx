<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_panel.aspx.cs" Inherits="Home.admin_panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css"/>
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
.one{
	height:900px;
	width:100%;
	border-style:solid;
	background-color:#566573;
}
.one h1{
	margin: 10px 0 0 10px;
}

.col{
    flex-basis: 50%;
}

.card{
	width: 330px;
    height: 260px;
    display: inline;
    border-radius: 10px;
    padding: 15px 25px;
    box-sizing: border-box;
    cursor: pointer;
    margin: 10px 15px;
    background-position: center;
    background-size: cover;
    transition: transform 0.5s ; 
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	float :left;
}
.card :hover{
	box-shadow:0 8px 16px 0 rgba(0,0,0,0.2);
}
.card2{
	width: 700px;
    height: 200px;
    display: inline;
    border-radius: 10px;
    padding: 15px 25px;
    box-sizing: border-box;
    cursor: pointer;
    margin: 10px 15px;
    background-position: center;
    background-size: cover;
    transition: transform 0.5s ; 
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	float :left;
}
.card3{
	width: 1200px;
    height: 320px;
    display: inline;
    border-radius: 10px;
    padding: 15px 25px;
    box-sizing: border-box;
    cursor: pointer;
    margin: 10px 15px;
    background-position: center;
    background-size: cover;
    transition: transform 0.5s; 
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	float: left;
}

.recent{
	width:750px;
	height:410px;
	background-color: #fff;
	border-radius: 10px;
	background-position: center;
	background-size: cover;
	box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	margin: 200px 15px ;
	box-sizing: border-box;
}
.icon{
	height:80px;
	width:80px;
	margin:30px 0 0 100px;
	justify-content:center;
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
			<li><asp:Button ID="Button1" runat="server" Text="logout" CssClass="login" /></li>
		</ul>
	</nav>
		</div>
		<div class="one">
			<h1>Dashboard</h1>
			
			<div class ="col">
				<div class ="card2">
					<asp:Label ID="Label4" runat="server" Text="" CssClass="card1" ForeColor="#161718" Font-Bold="True"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" Height="103px" AutoGenerateColumns ="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
					<Columns>
						<asp:BoundField DataField="time" HeaderText="Time" />
						<asp:BoundField DataField="date" HeaderText="Date" />
						<asp:BoundField DataField="Location" HeaderText="Location" />
						<asp:BoundField DataField="ingury_des" HeaderText="Indury Description" />
						<asp:BoundField DataField="damage_des" HeaderText="Damage Description" />
						<asp:BoundField DataField="image" HeaderText="Image" />
						<asp:TemplateField>
							<ItemTemplate>
								<asp:Button ID="Button3" runat="server" Text="Approve" Width="70px" OnClick="Button3_Click"  />
								&nbsp&nbsp
								<asp:Button ID="Button4" runat="server" Text="Reject" Width="70px" />
							</ItemTemplate>
						</asp:TemplateField>
					</Columns>
				</asp:GridView>
				</div>
			</div>
            
			<div>
				<div class ="col">
				<div class ="card">
					<asp:Label ID="Label3" runat="server" Text="Staff" CssClass="card1" ForeColor="#161718" Font-Bold="True"></asp:Label>
					<table>
                 <tr>
                     <td>
                         <asp:Label ID="Label1" runat="server" Text="USER NAME" ></asp:Label>
                     </td>
                 </tr>
                  <tr>
                      <td class="auto-style1">
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
                         <asp:Label ID="Label5" runat="server" Text="Type"></asp:Label>
                     </td>
                 </tr>
                  <tr>
                     <td>
                         <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Police</asp:ListItem>
                                    <asp:ListItem>Insurance</asp:ListItem>
                         </asp:DropDownList>
                        </td>
                 </tr>
                  <tr>
                      <td>
                          <asp:Button ID="Button3" runat="server" Text="Register" Height="40px" Width="280px" OnClick="Button3_Click" />
                      </td>
                  </tr>
              </table>
				</div>
			</div>
			<div class ="card3">
				<asp:GridView ID="GridView2" runat="server" Height="103px" AutoGenerateColumns ="false">
					<Columns>
						<asp:BoundField DataField="title" HeaderText="title" />
						<asp:BoundField DataField="fullname" HeaderText="fullname" />
						<asp:BoundField DataField="username" HeaderText="username" />
						<asp:BoundField DataField="password" HeaderText="password" />
						<asp:BoundField DataField="address" HeaderText="address" />
						<asp:BoundField DataField="phone_no" HeaderText="phon_no" />
                        <asp:BoundField DataField="nic" HeaderText="nic" />
						<asp:BoundField DataField="email" HeaderText="email" />
                        <asp:BoundField DataField="l_no" HeaderText="l_no" />
						<asp:BoundField DataField="t_no" HeaderText="t_no" />
                        <asp:BoundField DataField="vehi_no" HeaderText="vehical number" />
						<asp:BoundField DataField="year" HeaderText="year" />
                        <asp:BoundField DataField="make" HeaderText="make" />
						<asp:BoundField DataField="b_style" HeaderText="bo_style" />
                        <asp:BoundField DataField="modle" HeaderText="modle" />
						<asp:TemplateField>
							<ItemTemplate>
								<asp:Button ID="Button3" runat="server" Text="Approve" Width="70px" />&nbsp&nbsp
								<asp:Button ID="Button4" runat="server" Text="Reject" Width="70px" />
							</ItemTemplate>
						</asp:TemplateField>
					</Columns>
				</asp:GridView>
				</div>
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
