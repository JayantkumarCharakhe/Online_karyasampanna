<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-8 bg-style">
						<h3 class="section-title">
                            <asp:Label ID="Label1" runat="server" Font-Names="Impact" Font-Size="XX-Large" 
                                ForeColor="#006699" Text="Registration"></asp:Label>
                        </h3>
                        <div class="form-light mt-20" role="form">
                            <p>
                                <table style="width:100%;">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Name
                                        </td>
                                        <td>
								
                                <asp:TextBox ID="txtname" runat="server" class="form-control" 
                                    placeholder="Your name" Width="300px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                       ControlToValidate="txtname" Display="Dynamic" 
                                        ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                         SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$">Enter Correct Name!!!</asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                         ControlToValidate="txtname" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                                         SetFocusOnError="True">Enter your Name!!</asp:RequiredFieldValidator>
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
                                            Mobile No.</td>
                                        <td>
                                <asp:TextBox ID="txtphone" runat="server" class="form-control" 
                                    placeholder="Mobile Number" MaxLength="10" Width="300px" ></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                  ControlToValidate="txtphone" Display="Dynamic" 
                                   ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                                    SetFocusOnError="True">Enter your Mobile No!!!</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                      ControlToValidate="txtphone" Display="Dynamic" 
                                      ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                       SetFocusOnError="True" ValidationExpression="\d{10}">Enter Correct  Mobile No.</asp:RegularExpressionValidator>
								
                                
                                     
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
                                            Email</td>
                                        <td>
								
                                <asp:TextBox ID="txtmail" runat="server" class="form-control" 
                                    placeholder="Email address" Width="300px" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                      ControlToValidate="txtmail" Display="Dynamic" 
                                      ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                                      SetFocusOnError="True">Enter your EmailId!!!</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                      runat="server" ControlToValidate="txtmail" Display="Dynamic" 
                                      ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                      SetFocusOnError="True" 
                                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter Correct EmaiId</asp:RegularExpressionValidator>
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
                                            Username</td>
                                        <td>
								
                                <asp:TextBox ID="txtusername" runat="server" class="form-control" 
                                    placeholder="Username" Width="300px" ></asp:TextBox>
                                    
                              
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtusername" Display="Dynamic" 
                                     ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                                    SetFocusOnError="True">Enter Username here!!</asp:RequiredFieldValidator>
							    <asp:Label ID="lblmsg1" runat="server" ForeColor="Black"></asp:Label>
                               
                                
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
                                            Password</td>
                                        <td>
							
                                <asp:TextBox ID="txtpwd" runat="server" class="form-control" 
                                    placeholder="*******" TextMode="Password" Width="300px" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtpwd" Display="Dynamic" 
                                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                                    SetFocusOnError="True">Enter your Password!!</asp:RequiredFieldValidator>
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
                                            Security Question</td>
                                        <td>
								<asp:DropDownList ID="ddlquestion" runat="server" class="form-control" Width="300px">
                                    <asp:ListItem>Security Question</asp:ListItem>
                                     <asp:ListItem>NickName??</asp:ListItem>
                                     <asp:ListItem>Favourite Bird?</asp:ListItem>
                                     <asp:ListItem>Favourite Actor?</asp:ListItem>
                               </asp:DropDownList>

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
                                            Answer</td>
                                        <td>

                    <asp:TextBox ID="txtAnswer" runat="server" class="form-control"
                       placeholder="Answer" Width="300px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                   ControlToValidate="txtAnswer" Display="Dynamic" 
                                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                                    SetFocusOnError="True">Enter your Answer!!</asp:RequiredFieldValidator>

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
                                            Select Photo</td>
                                        <td>
								<asp:FileUpload ID="FileUpload1" runat="server" Class="form-control" />
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
							
							
							
                            <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-two" 
                                onclick="Button1_Click" CssClass="button" /></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 22px">
                                            </td>
                                        <td style="height: 22px">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:HiddenField ID="hfID" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                <asp:Label ID="lblmsg" runat="server" ForeColor="Black"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </p>
                            <p>
                                <br></p>
						</div>
					</div>

</asp:Content>

