<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AllData.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div  id="h" class="clearfix">
   </div>

   
    <div id="editpatient"  runat="server" class="addpatient" >
      
 <table class="addtable">
                <%--  <tr> <td colspan="2" style="text-align:center;color:#98f322">
                    <asp:Label CssClass="lname" ID="Label8" runat="server" Text="اضف البيانات"></asp:Label>
                    </td>
                  </tr>--%>
               
                     <tr>
               
                <td class="auto-style2">
                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="**" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:Label CssClass="lname" ID="Label4" runat="server" Text="Name"></asp:Label>
                   
                </td>
                <td class="auto-style2">

                    
 <asp:TextBox CssClass="add_txt" ID="TextBox8"  runat="server" Width="400px" Height="30px" Font-Bold="True"></asp:TextBox>
                 </td>
                 </tr>
                 <tr>
                          <td>                  
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage=" **" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                              
                    <asp:Label CssClass="lname" ID="Label1" runat="server" Text="Date" ></asp:Label>
                             
                </td>
                <td>
                   
                      <asp:TextBox CssClass="add_txt" ID="TextBox2" runat="server" Width="400px" Height="30px" Font-Bold="True" Font-Size="Large" CausesValidation="True" ></asp:TextBox>
                     <asp:Label  ID="Label9" runat="server" ForeColor="Red" Text=""></asp:Label>
                      <br />

                </td>

            </tr>
        </table>
     <section  class="followcheck" > follow up:
         <asp:TextBox ID="TextBox10" runat="server" TextMode="Date" Visible="False">1/1/1900</asp:TextBox>
         <br />
         <asp:Label ID="Label10" runat="server" ForeColor="Red"></asp:Label> <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox> </section>  
        
         <%--<input id="showbtn" class="showhidebtn" type="button" value="show" onclick="show()" aria-checked="undefined"  style="display:block;" />
                 <input id="hidebtn" class="showhidebtn" type="button" value="less" onclick="hide()" aria-checked="undefined" style="display:none;" />--%>

       <%-- <section id="addplussection"   class ="editplussection" > --%>   
           
            <table class="addtable2" >
             
            <tr>
                <td class="auto-style2">
                     <asp:Label CssClass="lname" ID="Label3" runat="server" Text="Occupation"></asp:Label>
                    
                </td>
                <td class="auto-style2">

                   <asp:TextBox CssClass="add_txt" ID="TextBox4" runat="server" Width="400px" Height="30px"  Font-Bold="True"></asp:TextBox>

             </td>
            </tr>
                  
                                               <tr>
                <td  class="auto-style2" >
                    
                    <asp:Label CssClass="lname" ID="Label5" runat="server" Text="Address"></asp:Label>
                </td>
                <td  class="auto-style2">

                    <asp:TextBox CssClass="add_txt" ID="TextBox5" runat="server" Width="400px" Height="30px" Font-Bold="True"></asp:TextBox>
             </td>
            </tr>


                </table>
            <table class="addtable">
           <tr>
                    <td colspan="2">
                        <div class="addmindiv">

                              <asp:Label ID="Label6" CssClass="lmin" runat="server" Text="Price"></asp:Label>
                        <asp:TextBox CssClass="mintxt" ID="TextBox6" runat="server" TextMode="Number" CausesValidation="True"></asp:TextBox>

                      
                             <asp:Label ID="Label7" CssClass="lmin"  runat="server" Text="Age"></asp:Label>
                        <asp:TextBox ID="TextBox7" CssClass="mintxt" runat="server"  CausesValidation="False"></asp:TextBox>
                        
                     </div>
                    </td> 
                    

                </tr>
  <tr>
<td >
    <br />
    <asp:Label ID="Label2" CssClass="ldis" runat="server" Text="Discription"></asp:Label><br />
    <asp:TextBox  ID="TextBox3" runat="server"  Height="300px" TextMode="MultiLine" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="X-Large" CssClass="add_dis"></asp:TextBox>
</td>

<td colspan="2">


</td>
               </tr> 
 





            </table>

<%--        </section>--%>
        <br /> 
        <asp:Button  ID="Button1" runat="server" Text="Edit" CssClass="addbtn" Width="103px" OnClick="Button1_Click" ForeColor="Green" />
        <asp:Button ID="Button2" Text="Cancel" Width="103px" CssClass="addbtn" runat="server" CausesValidation="False" OnClick="Button2_Click"  />
        <asp:Button ID="Button3" Text="Delete" Width="103px" CssClass="addbtn" runat="server" CausesValidation="False" OnClick="Button3_Click" ForeColor="Red"  />

    </div>
    <br />
    <div id="checkdelet" runat="server" class="addpatient">

    <asp:Label ID="Label8" CssClass="lname" runat="server" Text="Label"  Height="200px"></asp:Label>
        <asp:Button CssClass="addbtn" ID="Button4" runat="server" Text="Delete" ForeColor="Red" OnClick="Button4_Click" /><asp:Button ID="Button5" CssClass="addbtn" runat="server" Text="Cancel" OnClick="Button5_Click" />
</div>
      </asp:Content>

