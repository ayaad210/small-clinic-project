<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addpatient.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1"  ContentPlaceHolderID="head" runat="Server" >
    <style type="text/css">
        .auto-style2 {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="h" class="clearfix"></div>

    <div id="addpatient" class="addpatient" runat="server" >

 <table class="addtable">
                <%--  <tr> <td colspan="2" style="text-align:center;color:#98f322">
                    <asp:Label CssClass="lname" ID="Label8" runat="server" Text="اضف البيانات"></asp:Label>
                    </td>
                  </tr>--%>
               
                  <tr>
               
                <td class="auto-style2">
                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="**" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:Label CssClass="lname" ID="Label4" runat="server" Text="Name"></asp:Label>
                   
                </td>
                <td class="auto-style2">

                    
 <asp:TextBox CssClass="add_txt" ID="TextBox1"  runat="server" Width="400px" Height="30px" Font-Bold="True"></asp:TextBox>
                 </td>
                 </tr>
                 <tr>
                <td>                  
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage=" **" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Label CssClass="lname" ID="Label1" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                   
                      <asp:TextBox CssClass="add_txt" ID="TextBox2" runat="server" Width="400px" Height="30px" Font-Bold="True" Font-Size="Large" TextMode="Date"></asp:TextBox>

                </td>

            </tr>
        </table>


         <input id="showbtn" class="showhidebtn" type="button" value="show more " onclick="show()" aria-checked="undefined"  style="display:block;" />
                 <input id="hidebtn" class="showhidebtn" type="button" value="less" onclick="hide()" aria-checked="undefined" style="display:none;" />
   <section   class="followcheck"> Follow Up Date:  <asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox> </section>
        
        <section id="addplussection"  class ="addplussection" >    
           
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
            <table>
                
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

        </section>
        <br /> 
        <asp:Button  ID="Button1" runat="server" Text="ADD" CssClass="addbtn" Width="103px" OnClick="Button1_Click" />
        <asp:Button ID="Button2" Text="CANCEL" CssClass="addbtn" runat="server"  Width="103px" CausesValidation="False" OnClick="Button2_Click"  />
    </div>
<div id="message" runat="server" class="addpatient">

    <asp:Label ID="Label8" CssClass="lname" runat="server" Text="Label"  Height="200px"></asp:Label>

</div>
</asp:Content>

