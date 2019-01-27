<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Information.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        Search:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="218px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Width="75px" />
        &nbsp;<br />
        Select Paragraph:
        <asp:TextBox ID="TextBox3" runat="server" Width="33px"></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Button ID="btnPos" runat="server" OnClick="btnPos_Click" Text="POS Taging" />
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
    </div>
    <div>
        <asp:TextBox ID="TextBox2" runat="server" Height="132px" Width="958px" TextMode="MultiLine"></asp:TextBox></div>
</asp:Content>
