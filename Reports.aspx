<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
    .auto-style2 {
    }
</style>
   
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="h" class="clearfix"></div>

    <div class="addpatient">
     
        <table class="reporttable">
            <tr>
                <th colspan="3" style="color:red" ><h3>  Rebort table  </h3></th>
            </tr>
            <tr>
                <td><h3> Number of All Patients</h3></td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="patients" CssClass="settingbtn" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" BackColor="#CCFFCC" CssClass="Lsetting" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td> <h3> Sum of All prices</h3></td>
                <td>
                    <asp:Button ID="Button3" runat="server" style="margin-left: 0px" Text="price" CssClass="settingbtn" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" BackColor="#CCFFCC" CssClass="Lsetting" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" rowspan="3">
                    <h3> Select Amonth In Specific Year</h3>
                   <span>yea r:</span>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="130px" >
                    </asp:DropDownList>
                    <br />
                    <br />
                      <span>month:</span>

                    <asp:DropDownList ID="DropDownList2" runat="server" Width="130px">
                        <asp:ListItem Value="1">january</asp:ListItem>
                        <asp:ListItem Value="2">february</asp:ListItem>
                        <asp:ListItem Value="3">march</asp:ListItem>
                        <asp:ListItem Value="4">April</asp:ListItem>
                        <asp:ListItem Value="5">May</asp:ListItem>
                        <asp:ListItem Value="6">June</asp:ListItem>
                        <asp:ListItem Value="7">july</asp:ListItem>
                        <asp:ListItem Value="8">August</asp:ListItem>
                        <asp:ListItem Value="9">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="11">November</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button4" runat="server" Text="patients" CssClass="settingbtn" OnClick="Button4_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" BackColor="#CCFFCC" CssClass="Lsetting" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="price" CssClass="settingbtn" OnClick="Button5_Click" />
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" BackColor="#CCFFCC" CssClass="Lsetting" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td rowspan="3">
            <h3>  patients or prices in year</h3>
                    <span>year:</span>
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="130px">
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="patents" CssClass="settingbtn" OnClick="Button6_Click" />
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" BackColor="#CCFFCC" CssClass="Lsetting" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button8" runat="server" Text="price" CssClass="settingbtn" OnClick="Button8_Click" />
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" BackColor="#CCFFCC" CssClass="Lsetting" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td rowspan="3">
                   <h3>patients or prices in a day</h3>
                    <span>date:</span>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="patints" CssClass="settingbtn" OnClick="Button7_Click" />
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" BackColor="#CCFFCC" CssClass="Lsetting" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button9" runat="server" Text="price" CssClass="settingbtn" OnClick="Button9_Click" />
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" BackColor="#CCFFCC" CssClass="Lsetting" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
        </table>
     
</div>

</asp:Content>

