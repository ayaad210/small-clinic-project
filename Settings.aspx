<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div  id="h" class="clearfix">
   </div>

    <div class="addpatient"> 

   <h3 style="margin-left:41% ;margin-top:20px ;margin-right:41%;border:1px solid silver ;background-color:#988e8e"><a  href="Register.aspx">Add New Admin</a> </h3>
        <br />
        <div   class="editusersection" >
             
        
            <table>
                           <tr>
<th colspan="2">
      <h3 style="color:#6c0b0b;margin-bottom:15px"> Edit your password</h3>
         </th>

 </tr>
                   
                 <tr>

     <td> Old Password:
         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="**" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
      <td>
             <asp:TextBox CssClass="add_txt" ID="TextBox2" runat="server" Width="300px" Height="30px"  Font-Bold="True" TextMode="Password"></asp:TextBox>

</td>

 </tr>
                          <tr>
     <td> New Password:
         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="**" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
      <td>
             <asp:TextBox CssClass="add_txt" ID="TextBox3" runat="server" Width="300px" Height="30px"  Font-Bold="True" TextMode="Password"></asp:TextBox>

</td>

 </tr>
                          <tr>
     <td> Confirm Password:
         <br />
         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="**" ForeColor="Red"></asp:CompareValidator>
</td>
      <td>
             <asp:TextBox CssClass="add_txt" ID="TextBox4" runat="server" Width="300px" Height="30px"  Font-Bold="True" TextMode="Password"></asp:TextBox>

             <br />
             <asp:Label ID="Label3" runat="server"></asp:Label>

</td>

 </tr>

            </table>

            <br />
            <asp:Button CssClass= "sittingbtn"  ID="Button2" runat="server" Text="Edit your  Password" OnClick="Button2_Click" />
        </div>
   

        <br /> <br />
        <input id="Button3show" class="addbtn" onclick="show()"  type="button" value="---Delete All Data from program-- " />
        <br />
        <asp:Label ID="Label2" runat="server" Text="" CssClass="lname"></asp:Label>
        <section id="addplussection"  class="addplussection">
 
            <asp:Label ID="Label1" runat="server" Text="YOU About To Clear All DATA About Patients !! Are You Sure ?? " ForeColor="Blue" BackColor="Wheat"></asp:Label>
            <br />
         
                     <asp:Button CssClass="addbtn" ID="Button1" runat="server" Text="---Delete All Data -- " ForeColor="Red" CausesValidation="False" OnClick="Button1_Click" />
            <asp:Button CssClass="addbtn" ID="Button4" runat="server" Text="----Cancel----- "  CausesValidation="False" OnClick="Button4_Click" />

 
</section>
    </div>














</asp:Content>

