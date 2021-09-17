<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="duyuruguncelle.aspx.cs" Inherits="habersitesi.admin.duyuruguncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="text-align: right; width: 234px;">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 234px;">Başlık:</td>
            <td>
                <asp:TextBox ID="txt_duyurubaslik" runat="server" CssClass="textboxGorsel" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 234px;">İçerik:</td>
            <td>
            <CKEditor:CKEditorControl ID="txt_duyuruicerik" BasePath="/ckeditor/" runat="server" Width="450px"></CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 234px;">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 234px;">&nbsp;</td>
            <td>
                <asp:Button ID="btn_duyuruguncelle" runat="server" CssClass="butonGorsel" Text="Güncelle" OnClick="btn_duyuruguncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
