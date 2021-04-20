<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="changpwd.aspx.cs" Inherits="User_changpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
                        <table style="width:100%;">
                            <tr>
                                <td colspan="2" style="height: 22px" bgcolor="#336699" height="height: 38px">
             <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="White" 
                 Text="Change Password"></asp:Label>
                                  </td>
                            </tr>
                            <tr>
                                <td style="height: 22px">
                                </td>
                                <td style="height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Old Password</td>
                                <td>
              
               
                        <asp:TextBox ID="txtpwd" runat="server" class="form-control" placeholder="Old Password" 
                        TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtpwd" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                SetFocusOnError="True">Enter Your Old Password Here!!</asp:RequiredFieldValidator>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>

                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    New Password</td>
                                <td>

                   <asp:TextBox ID="txtnewpwd" runat="server" class="form-control" placeholder="New Password" 
                        TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtnewpwd" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                SetFocusOnError="True">Enter New Password Here!!</asp:RequiredFieldValidator>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>

                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    Confirm Password</td>
                                <td>

                   <asp:TextBox ID="txtcpwd" runat="server" class="form-control" placeholder="Conform Password" 
                        TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtcpwd" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                SetFocusOnError="True">Enter Conform Password Here!!</asp:RequiredFieldValidator>

                                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToCompare="txtnewpwd" ControlToValidate="txtcpwd" Display="Dynamic" 
                                        ErrorMessage="CompareValidator" ForeColor="#FF3300" SetFocusOnError="True">Password do not match !</asp:CompareValidator>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>

                <asp:Button ID="btnsubmit" runat="server" Text="Update" 
                         onclick="btnsubmit_Click" class="btn btn-two" CssClass="button" />

               
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>

                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>

                                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Courier New" 
                                        Font-Size="Medium" ForeColor="Red"></asp:Label>
                                    <asp:SqlDataSource ID="sqlpwd" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        DeleteCommand="DELETE FROM [Registration] WHERE [id] = @id" 
                                        InsertCommand="INSERT INTO [Registration] ([id], [username], [password]) VALUES (@id, @username, @password)" 
                                        SelectCommand="SELECT [id], [username], [password] FROM [Registration] WHERE ([username] = @username)" 
                                        UpdateCommand="UPDATE [Registration] SET [password] = @password WHERE [username] = @username">
                                        <DeleteParameters>
                                            <asp:Parameter Name="id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="id" Type="Int32" />
                                            <asp:Parameter Name="username" Type="String" />
                                            <asp:Parameter Name="password" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                                            <asp:ControlParameter ControlID="txtnewpwd" Name="password" PropertyName="Text" 
                                                Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>

               
                                </td>
                            </tr>
                        </table>

           

                        s

           

</asp:Content>

