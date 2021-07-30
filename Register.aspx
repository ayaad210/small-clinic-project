<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
  <h2><a  href="search.aspx"> << Back</a> <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label> </h2>
</header>

<div class="addpatient">

<form id="myform" runat="server" class="w3-container w3-card-4" >
  <h2 class="w3-text-theme">Register</h2>
  <div class="w3-input-group">   
      <label class="w3-text-black" style="font-size:large;">Name </label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox  CssClass="w3-input" ID="TextBox1" runat="server"></asp:TextBox>
  
  
  </div>
  <div class="w3-input-group">      
        <label class="w3-text-black" style="font-size:large">Password
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </label>
          &nbsp;<asp:TextBox  CssClass="w3-input" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

  
  </div>
     <div class="w3-input-group">      
        <label class="w3-text-black" style="font-size:large">Confirm pasowrd </label>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="DON'T MATCH" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
&nbsp;<asp:TextBox  CssClass="w3-input" ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>

  
  </div>

    <asp:RadioButtonList CssClass="radio" ID="RadioButtonList1" runat="server" Font-Size="Large" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
  <br/><br/>
  <label class="w3-checkbox"/>
    
      <asp:Button CssClass="w3-btn w3-theme" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
  
  <br/><br/>
</form>

</div>

</body>

</html>
