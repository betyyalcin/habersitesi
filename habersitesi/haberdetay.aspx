<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="haberdetay.aspx.cs" Inherits="habersitesi.haberdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            height: 109px;
        }
        .auto-style15 {
            height: 14px;
            width: 18px;
        }
        .auto-style17 {
            height: 20px;
            width: 20px;
        }
        .auto-style18 {
            width: 20px;
            height: 11px;
        }
        .auto-style19 {
            margin-top: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dl_haber" runat="server" Width="690px" CssClass="auto-style19">
        <ItemTemplate>
            <div>
                <div style="width:690px; margin:0 auto; height:auto;">

                    <div style="width: 690px; height: 40px; float: left">

                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left; background-image: url('temalar/gri.png'); background-repeat: repeat-x; line-height: 40px;">
                            <asp:Label ID="Label1" runat="server" Font-Size="20px" Text='<%# Eval("haberBaslik") %>'></asp:Label>
                        </div>

                    </div>
                    <div style="float:left; height:auto; width:690px; padding-bottom: 10px; background-image: url('temalar/kategoriarkaplan.png');">

                        <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("haberIcerik") %>'></asp:Label>

                    </div>
                    <div style="width:690px; float:left; height:20px; line-height:20px; font-size:12px;" class="auto-style14">
                        <div style="width:auto; height:20px; float:left; float:left; margin-right:15px;"> 

                            &nbsp;
                            <img alt="" class="auto-style18" src="temalar/saat.png" />
                            &nbsp; 

                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("haberTarih") %>'></asp:Label>

                        </div>
                        <div style="width:auto; height:20px; float:left; float:left;  margin-right:15px;">

                            <img alt="" class="auto-style15" src="temalar/göz.png" />

                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("haberOkunma") %>'></asp:Label>

                        </div>
                        <div style="width:auto; height:20px; float:left; float:left; margin-right:15px;">

                            <img alt="" class="auto-style17" src="temalar/yorum.png" />

                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("haberYorumSayisi") %>'></asp:Label>

                        </div>
                    </div>

                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
