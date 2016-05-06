<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="ViewMagazine.aspx.cs" Inherits="ViewMagazine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAdmin" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
    DataKeyNames="EventId" DataSourceID="SqlDataSource1" ForeColor="#333333" 
    GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="EventId" HeaderText="EventId" ReadOnly="True" 
            SortExpression="EventId" />
        <asp:BoundField DataField="EventName" HeaderText="EventName" 
            SortExpression="EventName" />
        <asp:BoundField DataField="PostedBy" HeaderText="PostedBy" 
            SortExpression="PostedBy" />
        <asp:BoundField DataField="Description" HeaderText="Description" 
            SortExpression="Description" />
        <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
        <asp:BoundField DataField="Date" HeaderText="Date" 
            SortExpression="Date" />
        <asp:BoundField DataField="CommentedBy" HeaderText="CommentedBy" 
            SortExpression="CommentedBy" />
        <asp:BoundField DataField="Comment" HeaderText="Comment" 
            SortExpression="Comment" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Sravani36ConnectionString %>" 
    
        
        SelectCommand="SELECT Events.EventId, Events.EventName, Events.RollNo AS PostedBy, Events.Description, Events.Venue, Events.Date, Comments.RollNo AS CommentedBy, Comments.Comment FROM Comments INNER JOIN Events ON Comments.EventId = Events.EventId WHERE (Events.Status = 'Yes')">
</asp:SqlDataSource>
</asp:Content>

