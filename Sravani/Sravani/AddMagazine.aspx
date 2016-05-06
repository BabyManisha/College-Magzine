<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="AddMagazine.aspx.cs" Inherits="AddMagazine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 251px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAdmin" Runat="Server">
    <p>
        <strong>Post into Magazine</strong></p>
    <table cellpadding="10" cellspacing="20" class="style1" 
        style="height: 494px; width: 54%">
        <tr>
            <td>
                Event Id</td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Event Name</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Description</td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server" Height="88px" TextMode="MultiLine" 
                    Width="219px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Venue</td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Date and Time</td>
            <td class="style4">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Insert" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/AddMagazine.aspx" 
                    Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

