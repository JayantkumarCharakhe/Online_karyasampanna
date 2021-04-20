<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" Debug="true" %>

  
<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%;">
        <tr>
            <td align="center" bgcolor="#336699" colspan="2">
             <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="White" 
                 Text="Welcome User"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px" colspan="2">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" GridLines="None" Height="192px" Width="223px" 
                    onpageindexchanging="DetailsView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                            SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="phon" HeaderText="phon" 
                            SortExpression="phon" />
                        <asp:BoundField DataField="email" HeaderText="email" 
                            SortExpression="email" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Registration] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Registration] ([id], [name], [phon], [email]) VALUES (@id, @name, @phon, @email)" 
                    SelectCommand="SELECT [id], [name], [phon], [email] FROM [Registration] WHERE ([username] = @username)" 
                    
                    
                    UpdateCommand="UPDATE [Registration] SET [name] = @name, [phon] = @phon, [email] = @email WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="phon" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="phon" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

