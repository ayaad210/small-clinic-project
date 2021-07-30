<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/login.css" rel="stylesheet" />
    <link href="style/pagesstyle.css" rel="stylesheet" />
</head>
<body>

<header class="w3-black">
  <span class="w3-xlarge">&#9776;</span>
        <a  href="About.aspx" style="float:right;font-size:x-large ;background-color:#3c3b3b" >About</a>

    <h3> <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></h3>
    <br />    <br />
    <br />
    

</header>

<div class="addpatient">

<form id="myform" runat="server" class="w3-container w3-card-4" >
  <h2 class="w3-text-theme">Login</h2>
  <div class="w3-input-group">   
      <label class="w3-text-black" style="font-size:large;">Name&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
      </label>
&nbsp;<asp:TextBox  CssClass="w3-input" ID="TextBox1" runat="server"></asp:TextBox>
  
  
  </div>
  <div class="w3-input-group">      
        <label class="w3-text-black" style="font-size:large">Password
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </label>
          &nbsp;<asp:TextBox  CssClass="w3-input" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

  
  </div>

 
  <br/><br/>
  <label class="w3-checkbox"/>
    
      <asp:Button CssClass="w3-btn w3-theme" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
  
  <br/><br/>
</form>

</div>

</body>


</html>
