<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="PoojaDetails.aspx.cs" Inherits="PoojaDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 96%;">
    <tr>
        <td colspan="2" style="height: 22px; text-align: left;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: x-large"><strong><span 
                style="color: #FF0000; text-align: center">Pooja Details</span>&nbsp;<br />
            <br />
            <br />
            </strong></span>
        </td>
    </tr>
    <tr>
        <td style="height: 22px; font-size: medium; color: #000000;">
            <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Pooja&nbsp; </b> </td>
        <td style="height: 22px">
            <asp:DropDownList ID="ddlpooja" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Satyanarayan Pooja</asp:ListItem>
                <asp:ListItem>Laxmi Pooja</asp:ListItem>
                <asp:ListItem>Datta Jayanti Pooja</asp:ListItem>
                <asp:ListItem>Vastu Pooja</asp:ListItem>
                <asp:ListItem>Ganpati Pooja</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="height: 26px; font-size: medium; color: #000000;">
            <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Samgri Details</b></td>
        <td style="height: 26px">
            <asp:TextBox ID="txtsamgri" runat="server" Height="41px" TextMode="MultiLine" 
                Width="302px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 26px; font-size: medium; color: #000000;">
            <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Cost</b></td>
        <td style="height: 26px">
            <asp:TextBox ID="txtcost" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 26px; font-size: medium; color: #000000;">
            <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Photo</b></td>
        <td style="height: 26px">
            <asp:FileUpload ID="fphoto" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="height: 26px">
            <br />
        </td>
        <td style="height: 26px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Submit" 
                BackColor="White" BorderColor="Black" Height="33px" 
                style="color: #000000; font-weight: bold" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnshow" runat="server" onclick="btnshow_Click2" Text="Show" 
                BackColor="White" BorderColor="Black" Height="34px" 
                style="color: #000000; font-weight: bold" />
            <br />
            <br />
            <br />
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="pid" DataSourceID="SqlDataSource1" Width="644px" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4">
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
       <img src="admin_img/<%#Eval("photo") %>" width="100px" height="100px">
       </ItemTemplate>
      </asp:TemplateField>
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
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand=""></asp:SqlDataSource>
</asp:Content>

