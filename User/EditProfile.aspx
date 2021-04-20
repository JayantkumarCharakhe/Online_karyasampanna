<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="User_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#336699" height="height: 38px" style="height: 22px">
             <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="White" 
                 Text="Edit Profile"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" GridLines="None" Height="192px" Width="223px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" 
                            SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="phon" HeaderText="Mobile Number" 
                            SortExpression="phon" />
                        <asp:BoundField DataField="email" HeaderText="Email ID" 
                            SortExpression="email" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:IMAGEAUTHENTICATIONConnectionString %>" 
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

