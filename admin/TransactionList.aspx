<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TransactionList.aspx.cs" Inherits="admin_TransactionList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#FF3300" Text="Transaction Details"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Width="90%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                      <asp:TemplateField HeaderText="Sr.No.">
         <ItemTemplate>
               <%# Container.DataItemIndex + 1 %>
         </ItemTemplate>
     </asp:TemplateField>
                        <asp:BoundField DataField="username" HeaderText="UserName" 
                            SortExpression="username" />
                        <asp:BoundField DataField="pooja_name" HeaderText="Pooja Title" 
                            SortExpression="pooja_name" />
                        <asp:BoundField DataField="pooja_details" HeaderText="Details" 
                            SortExpression="pooja_details" />
                        <asp:BoundField DataField="pcost" HeaderText="Fees" 
                            SortExpression="pcost" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                            Visible="False" />

                          <asp:TemplateField>
                        <ItemTemplate>
                            <img src="admin_img/<%# Eval("photo") %>" width="100px"/>
                        </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT Booking.username, Pooja_Details.pooja_name, Pooja_Details.pooja_details, Pooja_Details.pcost, Pooja_Details.photo FROM Booking INNER JOIN Pooja_Details ON Booking.pid = Pooja_Details.pid">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

