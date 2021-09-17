<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="haberler.aspx.cs" Inherits="habersitesi.admin.haberler" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

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
            height: 21px;
        }

        .auto-style5 {
            height: 21px;
        }

        .auto-style6 {
            border: 1px dotted #2a595c;
        }

        .auto-style7 {
            width: 310px;
        }

        .auto-style9 {
            width: 100%;
            height: 41px;
        }

        .auto-style10 {
            width: 2px;
        }

        .auto-style11 {
            width: 61px;
            height: 28px;
        }

        .auto-style12 {
            width: 26px;
        }

        .auto-style13 {
            width: 74px;
            height: 28px;
        }
        .auto-style15 {
            width: 233px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height: 25px; background-color: #2a595c; color: #ffffff; font-weight: bolder;">
            &nbsp;
            <asp:Button ID="btn_harti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_hearti_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_heksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_heeksi_Click" />
            &nbsp; Haber Ekleme Paneli </div>
        <asp:Panel ID="pnl_haberEkle" runat="server" BackColor="Silver" BorderColor="#0A392F" ForeColor="White">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" style="text-align: right">Kategori :</td>
                    <td>
                        <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="auto-style6" Height="19px" Width="191px" OnSelectedIndexChanged="ddl_kategori_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">Başlık:</td>
                    <td>
                        <asp:TextBox ID="txt_haberbaslik" runat="server" CssClass="textboxGorsel" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">Özet:</td>
                    <td>
                        <asp:TextBox ID="txt_haberozet" runat="server" CssClass="textboxGorsel" Height="500px" TextMode="MultiLine" Width="500px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">İçerik:</td>
                    <td>
                        <CKEditor:CKEditorControl ID="txt_habericerik" runat="server" BasePath="/ckeditor/" Height="549px" Width="500px"></CKEditor:CKEditorControl>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">Slider:</td>
                    <td class="auto-style5">
                        <asp:FileUpload ID="fu_slider" runat="server" CssClass="auto-style6" Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_haberekle" runat="server" CssClass="butonGorsel" OnClick="btn_haberekle_Click" Text="EKLE" />
                    </td>
                </tr>
            </table>

        </asp:Panel>
        <div style="height: 30px;"></div>
        <div style="height: 25px; background-color: #2a595c; color: #ffffff; font-weight: bolder;">
            &nbsp;
            <asp:Button ID="btn_hduzenlearti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_hduzenlearti_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_hduzenleeksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_hduzenleeksi_Click" />
            &nbsp; Haber Düzenleme Paneli
        </div>
        <asp:Panel ID="pnl_haberduzenle" runat="server" BackColor="Silver" BorderColor="#0A392F" ForeColor="White">
            <asp:DataList ID="dl_habergetir" runat="server" Width="697px">
                <HeaderTemplate>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style7">HABER ADI</td>
                            <td class="auto-style12">&nbsp;</td>
                            <td class="auto-style13">SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style9">
                        <tr>
                            <td class="auto-style7">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("haberBaslik") %>'></asp:Literal>
                            </td>
                            <td class="auto-style10">
                                &nbsp;</td>
                            <td class="auto-style13">
                                <a href="haberler.aspx?haberİD=<%#Eval("haberİD") %>&islem=sil">
                                    <img alt="" class="auto-style11" src="../temalar/sil.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
    <div style="height: 30px;"></div>
    <div style="height: 25px; background-color: #2a595c; color: #ffffff; font-weight: bolder;">
        &nbsp;
            <asp:Button ID="btn_darti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_darti_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_deksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_deksi_Click"  />
        &nbsp; Haber Dosya Ekleme Paneli

    </div>
    <asp:Panel ID="Pnl_haberDosya" runat="server" BackColor="Silver" BorderColor="#0A392F" ForeColor="White">
        <table class="auto-style2">
            <tr>
                <td class="auto-style15" style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15" style="text-align: right">Dosya Seç:</td>
                <td>
                    <asp:FileUpload ID="fu_haberdosya" runat="server" CssClass="textboxGorsel" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15" style="text-align: right">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_haberdosyaekle" runat="server" CssClass="butonGorsel" OnClick="btn_haberdosyaekle_Click" Text="Ekle" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15" style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15" style="text-align: right">Not:</td>
                <td>Ekleme İşlemi /dosyalar/ eklenen dosya.uzantı şeklinde kullanılacak.</td>
            </tr>
            <tr>
                <td class="auto-style15" style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <div style="height: 30px;"></div>

</asp:Content>
