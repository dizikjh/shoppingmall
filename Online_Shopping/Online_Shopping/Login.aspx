<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Shopping.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br /> <br /> <br /> <br /> <br /><br />
    <p>
    &nbsp;
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID (Email)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_logid" runat="server" Height="17px" Width="130px" TextMode="Email"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_logid" ErrorMessage="Insert ID"></asp:RequiredFieldValidator>
</p>
<p>
&nbsp;</p>
<p>
    &nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label_password" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_logpwd" runat="server" Height="16px" Width="129px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_logpwd" ErrorMessage="Insert Password"></asp:RequiredFieldValidator>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Bt_login" runat="server"  Text="Log In" Width="149px" OnClick="Bt_login_Click" />
    <asp:Label ID="login_Msg" runat="server"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="idshow" runat="server" Height="16px" Width="129px"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="showtb" runat="server" OnClick="showtb_Click" Text="show table" />
&nbsp;&nbsp;
    <asp:Button ID="update" runat="server" OnClick="update_Click" Text="update" />
    <asp:GridView ID="grdMemberView" runat="server" OnSelectedIndexChanged="grdMemberView_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
</p>
</asp:Content>
