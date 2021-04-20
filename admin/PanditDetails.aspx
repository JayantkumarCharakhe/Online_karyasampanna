<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="PanditDetails.aspx.cs" Inherits="admin_PanditDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 96%;">
        <tr>
            <td colspan="2" style="height: 22px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: x-large"><strong>&nbsp;&nbsp; <span style="color: #FF0000">Pandit Details</span>&nbsp;&nbsp;<br />
                <br />
                </strong></span>
            </td>
        </tr>
        <tr>
            <td style="height: 22px; font-size: medium; color: #000000;">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ID</b></td>
            <td style="height: 22px">
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 22px; font-size: medium; color: #000000;">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Name
            </b>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; font-size: medium; color: #000000;">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Mobile No.</b></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; font-size: medium; color: #000000;">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Address</b></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; font-size: medium; color: #000000;">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Email ID</b></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; font-size: medium; color: #000000;">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Area</b></td>
            <td style="height: 26px">
                <asp:DropDownList ID="ddlarea" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Rathi Nagar</asp:ListItem>
                    <asp:ListItem>Gadge Nagar</asp:ListItem>
                    <asp:ListItem>Sai Nagar</asp:ListItem>
                    <asp:ListItem>Rajapeth</asp:ListItem>
                    <asp:ListItem>Rajkamal</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
             <td style="height: 26px; font-size: medium; color: #000000;">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Fees</b></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtFees" runat="server"></asp:TextBox>
             </td>
        </tr>
        <tr>
            <td style="height: 26px">
                </td>
            <td style="height: 26px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Pandit_Details] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Pandit_Details] ([pname], [pcontact], [paddress], [pemail], [parea],[fees]) VALUES (@pname, @pcontact, @paddress, @pemail, @parea,@fees)" 
                    SelectCommand="SELECT * FROM [Pandit_Details]" 
                    
                    UpdateCommand="UPDATE [Pandit_Details] SET [pname] = @pname, [pcontact] = @pcontact, [paddress] = @paddress, [pemail] = @pemail, [parea] = @parea WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtname" Name="pname" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="txtmobile" Name="pcontact" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="txtaddress" Name="paddress" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="txtemail" Name="pemail" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="ddlarea" Name="parea" PropertyName="SelectedValue" 
                            Type="String" />
                        <asp:ControlParameter ControlID="txtFees" Name="fees" PropertyName="Text" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="pname" Type="String" />
                        <asp:Parameter Name="pcontact" Type="String" />
                        <asp:Parameter Name="paddress" Type="String" />
                        <asp:Parameter Name="pemail" Type="String" />
                        <asp:Parameter Name="parea" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 37px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    Width="57px" BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                    ForeColor="Black" Height="31px" style="font-weight: 700" />
                <asp:Button ID="btnshow" runat="server" onclick="btnshow_Click" 
                    style="margin-left: 20px; font-weight: 700; margin-top: 9px;" Text="Show" 
                    BackColor="White" BorderColor="Black" BorderStyle="Groove" ForeColor="Black" 
                    Height="33px" />
                &nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
    <asp:GridView ID="gvdetails" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" Width="630px" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="pname" HeaderText="Name" SortExpression="pname" />
            <asp:BoundField DataField="pcontact" HeaderText="Mobile No" 
                SortExpression="pcontact" />
            <asp:BoundField DataField="paddress" HeaderText="Address" 
                SortExpression="paddress" />
            <asp:BoundField DataField="fees" HeaderText="Fees" 
                SortExpression="fees" />
            <asp:BoundField DataField="parea" HeaderText="Area" SortExpression="parea" />
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
        SelectCommand="">
    </asp:SqlDataSource>
    </asp:Content>

