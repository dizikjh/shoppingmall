<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Online_Shopping.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <br /> <br /> <br /> <br /> <br /> <br /><br />
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_fname" runat="server" Height="16px" Width="129px"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_fname" ErrorMessage="Insert FirstName"></asp:RequiredFieldValidator>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_lname" runat="server" Height="16px" Width="129px"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_lname" ErrorMessage="Insert LastName"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:RadioButton ID="male" runat="server" GroupName="r_gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" ValidateRequestMode="Enabled" />
&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="female" runat="server" GroupName="r_gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Female" ValidateRequestMode="Enabled" />
&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_repwd" ErrorMessage="Choose the Gender"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="r_label" runat="server"></asp:Label>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label_email" runat="server" Text="E-mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_email" runat="server" Height="17px" Width="130px" TextMode="Email"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_email" ErrorMessage="Insert E-mail"></asp:RequiredFieldValidator>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_address" runat="server" Height="16px" Width="129px"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_address" ErrorMessage="Insert Address"></asp:RequiredFieldValidator>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Region&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_region" runat="server" Height="16px" Width="129px"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_region" ErrorMessage="Insert Region"></asp:RequiredFieldValidator>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label_password" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_pwd" runat="server" Height="16px" Width="129px" TextMode="Password"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_pwd" ErrorMessage="Insert Password"></asp:RequiredFieldValidator>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label_password0" runat="server" Text="Check Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_repwd" runat="server" Height="16px" Width="129px" TextMode="Password"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_repwd" ErrorMessage="Wrong Password"></asp:RequiredFieldValidator>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtRegister" runat="server" OnClick="Button1_Click" Text="Register" Width="166px" align="center"/>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
</p>
</asp:Content>
