<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div  id="h" class="clearfix">
   </div>


<aside class="leftaside" >
   
    <asp:TextBox ID="TextBox1" CssClass="add_txt"  AutoPostBack="true"  runat="server" Font-Bold="True" Height="30px" Width="242px" Font-Size="Large" TextMode="Search"  OnTextChanged="TextBox1_TextChanged"   ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" CssClass="SEARCHBTN" />


    <%--<asp:RadioButtonList ID="RadioButtonList2"  ValidationGroup="search" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" Width="161px" CssClass="radio" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" >
        <asp:ListItem " Value="name" Selected="True">Search By Name </asp:ListItem>
        <asp:ListItem Value="date">Search By Date</asp:ListItem>
    </asp:RadioButtonList>--%>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1">
        <asp:ListItem Selected="True" Value=" name">Seerch By Name</asp:ListItem>
        <asp:ListItem Value="date">Search By Date</asp:ListItem>
        <asp:ListItem Value="id">Search By ID</asp:ListItem>
        <asp:ListItem Value="followup">follow up date</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <br /><br />

    <asp:Button CssClass="SEARCHBTN" ID="Button2" runat="server" Text="All With Details" OnClick="Button2_Click" />
</aside>





<aside runat="server" tabindex="4" class="rightaside" id="tablecontaner">
   

<asp:GridView ID="GridView1" CssClass="gridviewsearch" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="765px">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" SelectText="show details" >
        <ControlStyle Font-Size="Large" ForeColor="Black" />
        </asp:CommandField>
    </Columns>
    <EditRowStyle HorizontalAlign="Center" />
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</aside>
    





</asp:Content>

