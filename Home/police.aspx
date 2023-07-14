<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="police.aspx.cs" Inherits="Home.police" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    padding-top:20px;
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

.navi{
	height:auto;
	width:100%;
}
.insu{
	height:610px;
	width:100%;
	padding-top:10px;
    background-color:white;
	
}
.gridv{

width: 80%;
border: solid 2px black;
min-width: 80%;
}
.header
{
background-color: #646464;
font-family: Arial;
color: White;
border: none 0px transparent;
height: 25px;
text-align: center;
font-size: 16px;
}

.rows
{
background-color: #fff;
font-family: Arial;
font-size: 14px;
color: #000;
min-height: 25px;
text-align: left;
border: none 0px transparent;
}
.rows:hover
{
background-color: #ff8000;
font-family: Arial;
color: #fff;
text-align: left;
}
.selectedrow
{
background-color: #ff8000;
font-family: Arial;
color: #fff;
font-weight: bold;
text-align: left;
}
.mydatagrid a /** FOR THE PAGING ICONS **/
{
background-color: Transparent;
padding: 5px 5px 5px 5px;
color: #fff;
text-decoration: none;
font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
{
background-color: #000;
color: #fff;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
background-color: #c9c9c9;
color: #000;
padding: 5px 5px 5px 5px;
}
.pager
{
background-color: #646464;
font-family: Arial;
color: White;
height: 30px;
text-align: left;
}

.mydatagrid td
{
padding: 5px;
}
.mydatagrid th
{
padding: 5px;
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
#hi{
    height:150px;
    width:100%;
    padding-top:100px;
  background-image:url('https://res.cloudinary.com/twenty20/private_images/t_standard-fit/photosp/3e87c4b7-56eb-4606-8573-231cb3ce27d1/stock-photo-aged-blank-building-panoramic-horizontal-wide-paint-dark-dirty-exterior-textured-wallpaper-weathered-panorama-concrete-design-brick-brickwork-grunge-solid-backdrop-surface-old-texture-black-abstract-cement-background-vintage-wall-3e87c4b7-56eb-4606-8573-231cb3ce27d1.jpg');
  color:gold;
}
#Label1{
    font-size:27px;
    padding-left:26px;
    padding-bottom:10px;
    opacity:0.5;

}
#calan{
    width:30%;
    height:450px;
    float:right;
    padding-top:5px;
    
}
#grid{
    width:650PX;
    height:450px;
    float:left;
    padding-top:5px;
    background-color:aquamarine;
    align-items: center;
   
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
			<li><asp:Button ID="Button1" runat="server" Text="logout" CssClass="login" /></li>
		
		</ul>
	</nav>
</div>
        <!--body-->
		<div class="insu">
            <div id="hi">
                <asp:Label ID="Label1" runat="server" Text="hiiiiiiiii" Font-Bold="True"></asp:Label>
            </div>
            <div id="grid">
                <div class ="card3">
				<asp:GridView ID="GridView1" runat="server" Height="103px" AutoGenerateColumns ="false" CssClass ="gridv" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
					<Columns>
						<asp:BoundField DataField="time" HeaderText="Time" />
						<asp:BoundField DataField="date" HeaderText="Date" />
						<asp:BoundField DataField="Location" HeaderText="Location" />
						<asp:BoundField DataField="ingury_des" HeaderText="Indury Description" />
						<asp:BoundField DataField="damage_des" HeaderText="Damage Description" />
						<asp:BoundField DataField="image" HeaderText="Image" />
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
            <div id="calan">
                <asp:Chart ID="Chart1" runat="server" Width ="488px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="0" YValueMembers="2"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>

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
