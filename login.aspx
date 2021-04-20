<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
               
			   <div class="col-sm-8 col-md-6 col-md-offset-2">
            <h1 class="text-center login-title">Sign in to continue </h1>
            <div class="account-wall">
                <img class="profile-img" src="assets/images/photo.png"
                    alt="">
                <div class="form-signin">
              
                <asp:TextBox ID="txtusername" runat="server" class="form-control" 
                        placeholder="Username" required autofocus></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtusername" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                SetFocusOnError="True">Enter Username Here!!</asp:RequiredFieldValidator>

           
                <asp:TextBox ID="txtpwd" runat="server" class="form-control" placeholder="Password" 
                        TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtpwd" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                SetFocusOnError="True">Enter Password Here!!</asp:RequiredFieldValidator>

                <asp:Button ID="btnsign" runat="server" Text="Sign in" 
                        class="btn btn-lg btn-primary btn-block" onclick="btnsign_Click"/>

               
                <a href="ForgetPwd.aspx" class="pull-right need-help">Forgot Password?</a><span class="clearfix"><a href="ForgetPwd.aspx" class="pull-right need-help"><asp:Label 
                        ID="lblmsg" runat="server" ></asp:Label>
                    </a></span></div>
            </div>
            <a href="register.aspx" class="text-center new-account">Create an account </a>
                   <br />
                   <br />
                   <table style="width:100%;">
                       <tr>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                   </table>
        </div>
			   

</asp:Content>

