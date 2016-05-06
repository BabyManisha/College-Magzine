<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser.master" AutoEventWireup="true" CodeFile="CommentUser.aspx.cs" Inherits="CommentUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUser" Runat="Server">
    <p>
        <strong>Post A Comment</strong></p>
    <table cellpadding="10" cellspacing="20" class="style1" 
        style="height: 300px; width: 55%">
        <tr>
            <td>
            EventId</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="EventId" DataValueField="EventId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Sravani36ConnectionString %>" 
                SelectCommand="SELECT [EventId] FROM [Events] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
            Comment</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="79px" TextMode="MultiLine" 
                Width="321px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/CommentAdmin.aspx" 
                Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

