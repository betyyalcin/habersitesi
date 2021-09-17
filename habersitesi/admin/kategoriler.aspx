<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="habersitesi.admin.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 197px;
        }
        .auto-style4 {
            width: 197px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style7 {
            width: 197px;
            height: 27px;
        }
        .auto-style8 {
            height: 27px;
        }
        .auto-style9 {
            width: 409px;
        }
        .auto-style10 {
            width: 162px;
        }
        .auto-style11 {
            width: 43px;
            height: 26px;
        }
        .auto-style12 {
            width: 46px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:25px; background-color:#2a595c; color:#ffffff; font-weight:bolder;" >&nbsp;
            <asp:Button ID="btn_eklearti" runat="server" Height="25px" OnClick="btn_eklearti_Click" Text="+" Width="25px" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_ekleeksi" runat="server" Height="25px" OnClick="btn_ekleeksi_Click" Text="-" Width="25px" />
&nbsp; Kategori Ekleme Paneli</div>
        <asp:Panel ID="pnl_kategoriEkle" runat="server" BackColor="Silver" BorderColor="#0A392F" ForeColor="White">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">Kategori Adı:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_kategoriadi" runat="server" BackColor="White" BorderColor="Black" CssClass="textboxGorsel" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">Sıra:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_sira" runat="server" BackColor="White" BorderColor="Black" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">Resmi:</td>
                    <td>
                        <asp:FileUpload ID="fu_kategoriresim" runat="server" BorderColor="Black" CssClass="textboxGorsel" Width="285px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="text-align: right"></td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_kategoriekle" runat="server" CssClass="butonGorsel" OnClick="btn_kategoriekle_Click" Text="Ekle" />
                    </td>
                </tr>
            </table>

        </asp:Panel>
        <div style="height:30px;"; ></div>
        <div style="height:25px; background-color:#2a595c; color:#ffffff; font-weight:bolder;" >&nbsp;
            <asp:Button ID="btn_kdArti" runat="server" Height="25px"  Text="+" Width="25px" OnClick="btn_kdArti_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_kdEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_kdEksi_Click" />
            &nbsp; Kategori Düzenleme Paneli</div>
        <asp:DataList ID="dl_kategorigetir" runat="server" Width="700px">
            <HeaderTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style9">KATEGORİ ADI</td>
                        <td class="auto-style10">GÜNCELLE</td>
                        <td>SİL</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style9">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                        </td>
                        <td class="auto-style10">
                            <a href ="kategoriguncelle.aspx?kategoriİD=<%#Eval("kategoriİD") %>"><img alt="" class="auto-style12" src="../temalar/düzenle.png" /></a>
                        </td>
                        <td>
                            <a href="kategoriler.aspx?kategoriİD=<%#Eval("kategoriİD") %>&islem=sil"><img alt="" class="auto-style11" src="../temalar/sil.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:Panel ID="pnl_kategoriduzenle" runat="server" BackColor="Silver" BorderColor="#0A392F" ForeColor="White">
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
            </asp:Panel>
        <div style="height:30px;"; ></div>
    </div>
</asp:Content>


