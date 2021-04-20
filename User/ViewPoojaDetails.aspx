<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ViewPoojaDetails.aspx.cs" Inherits="User_ViewPoojaDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table style="width: 100%;">
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-size: x-large"><strong>&nbsp;<span style="color: #FF0000">Pooja Details</span></strong></span>&nbsp;<br />
                <br />
                <br />
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;<span style="color: #000000; font-size: large"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select 
                Type&nbsp; </strong></span></td>
            <td>
            <asp:DropDownList ID="ddlpooja" runat="server" 
                    onselectedindexchanged="ddlpooja_SelectedIndexChanged" 
                    ontextchanged="ddlpooja_TextChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Satyanarayan Pooja</asp:ListItem>
                <asp:ListItem>Laxmi Pooja</asp:ListItem>
                <asp:ListItem>Datta Jayanti Pooja</asp:ListItem>
                <asp:ListItem>Vastu Pooja</asp:ListItem>
                <asp:ListItem>Ganpati Pooja</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td style="height: 30px">
                </td>
            <td style="height: 30px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 30px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" 
                    BackColor="#CC3300" BorderColor="Black" Height="36px" 
                    style="color: #000000; font-weight: 700; font-size: medium; background-color: #FFFFFF" />
            </td>
        </tr>
    </table>
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="pid" DataSourceID="SqlDataSource1" Width="636px" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" onselectedindexchanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="pid" HeaderText="PID" InsertVisible="False" 
            ReadOnly="True" SortExpression="pid" />
        <asp:BoundField DataField="pooja_name" HeaderText="Pooja" 
            SortExpression="pooja_name" />
        <asp:BoundField DataField="pooja_details" HeaderText="Samgri" 
            SortExpression="pooja_details" />
        <asp:BoundField DataField="pcost" HeaderText="Cost" SortExpression="pcost" />
        <asp:BoundField DataField="photo" HeaderText="Photo" SortExpression="photo" 
            Visible="False" />
         <asp:TemplateField>
       <ItemTemplate>
       <img src="../admin/admin_img/<%#Eval("photo") %>" width="100px" height="100px">
       </ItemTemplate>
      </asp:TemplateField>
        <asp:ButtonField ButtonType="Button" Text="Add" />
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
    <SelectParameters>
        <asp:ControlParameter ControlID="ddlpooja" Name="pooja_name" 
            PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

