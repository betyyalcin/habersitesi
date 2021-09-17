<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="duyurular.aspx.cs" Inherits="habersitesi.admin.duyurular" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:25px; background-color:#2a595c; color:#ffffff; font-weight:bolder;" >&nbsp;
            <asp:Button ID="btn_deklearti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_deklearti_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_dekleeksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_dekleeksi_Click" />
&nbsp; Duyuru Ekleme Paneli</div>
        <asp:Panel ID="pnl_duyuruEkle" runat="server" BackColor="Silver" BorderColor="#0A392F" ForeColor="White">
            <table style="width: 100%">
                <tr>
                    <td style="width: 267px; text-align: right;">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 267px;">Başlık</td>
                    <td>
                        <asp:TextBox ID="txt_dBaslik" runat="server" CssClass="textboxGorsel" Height="25px" Width="420px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 267px;">İçerik:</td>
                    <td>
                        <CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server" Width="420px"></CKEditor:CKEditorControl>

                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 267px;">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_dekle" runat="server" Text="Ekle" CssClass="butonGorsel" OnClick="btn_dekle_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 267px;">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </asp:Panel>
        <div style="height:30px;"; ></div>
        <div style="height:25px; background-color:#2a595c; color:#ffffff; font-weight:bolder;" >&nbsp;
            <asp:Button ID="btn_dArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_dArti_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_dEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_dEksi_Click" />
&nbsp; Duyuru Düzenleme Paneli</div>
        <asp:Panel ID="pnl_duyuruDuzenle" runat="server" BackColor="Silver" BorderColor="#0A392F" ForeColor="White">
            <asp:DataList ID="dl_duyurugetir" runat="server" Width="699px">
                <HeaderTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td style="height: 21px; width: 656px">DUYURU BAŞLIK</td>
                            <td style="height: 21px; width: 174px">GÜNCELLE</td>
                            <td style="height: 21px; width: 165px">SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table style="width: 100%; height: 28px;">
                        <tr>
                            <td style="height: 21px; width: 955px">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyurularBaslik") %>'></asp:Literal>
                            </td>
                            <td style="height: 21px; width: 247px">
                              <a href="duyuruguncelle.aspx?duyurularID=<%#Eval("duyurularID") %>"><img alt="" src="../temalar/düzenle.png" style="width: 53px; height: 21px" /></a>

                            </td>
                            <td style="height: 21px; width: 155px">
                              <a href="duyurular.aspx?duyurularID=<%#Eval("duyurularID") %>&islem=sil"> <img alt="" src="../temalar/sil.png" style="width: 46px; height: 23px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
        <div style="height:30px;"; ></div>
           
            </div>

</asp:Content>
