<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="denemedeneme.aspx.cs" Inherits="habersitesi.admin.denemedeneme" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
</asp:Content>
