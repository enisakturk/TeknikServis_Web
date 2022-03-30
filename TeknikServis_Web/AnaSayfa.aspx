<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="TeknikServis_Web.AnaSayfa" %>


<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Ürün Takip Ve Teknik Servis Projesi</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content=""/>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="teknik_servis_web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="teknik_servis_web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="teknik_servis_web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet">
    <!-- //online-fonts -->

</head>
<body>
    <div class="sidenav">
        <div class="row side_top">
            <div class="col-4 side_top_left">
                <img src="teknik_servis_web/images/teknikservis-01.png" alt="news image" class="img-fluid navimg">
            </div>
            <div class="col-8 side_top_right">
                <h6 style="color:red">Teknik Servis</h6>
                <p>Ürün Takip</p>

            </div>
        </div>
        <header>
            <div class="container-fluid px-md-5 ">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="active"><a href="#home" class="scroll" style="color:white">Ana Sayfa</a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">Hakkımızda</a></li>
                        <li class="mt-sm-3"><a href="#gallery" class="scroll">Ürünler</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Ürün Takibi</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">İletişim</a></li>
                    </ul>
                </nav>
            </div>
        </header>
    </div>
    <div class="main" id="home">
        <div class="banner-text-w3ls">
            <div class="container">
                <div class="mx-auto text-center">
                    <h1>En uygun fiyatlarla yüzlerce ürün bir tıkla kapınızda.</h1>
                    <p class="banp mx-auto mt-3" style="color:black">13 farklı kategoriyle hizmetinizdeyiz</p>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button" style="background-color:lightseagreen">Daha Fazlası</a>
                </div>
            </div>
        </div>
        <!-- about -->
        <section class="slide-wrapper" id="about">
            <h3 class="w3_head mb-5">Hakkımızda </h3>
            <img src="teknik_servis_web/images/about2.png" class="img-fluid" alt="">
            <p class="iner mt-5">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <%# Eval("METIN")%>
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </section>
        <!-- //about -->
        
        <div class="news" id="gallery">
            <div class="text-center">
                <h2 class="w3_head">Ürünler</h2>
                <table class="table table-bordered">
                    <tr>
                        <th>ID</th>
                        <th>ÜRÜN ADI</th>
                        <th>MARKA</th>
                        <th>FİYAT</th>
                    </tr>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("ID")%></td>
                                <td><%# Eval("AD")%></td>
                                <td><%# Eval("MARKA")%></td>
                                <td><%# Eval("SATISFIYAT")%></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>

        </div>
      
        <!--services-->
        <div class="wthree_pvtits-services align-w3" id="services">
            <div class="container">
                <div class="wthree_pvt_title text-center">
                    <h3 class="w3_head">
                        Teknik Servis
                    </h3>
                    <p class="main_p mb-5  text-center mx-auto">
                        Mağazamızdan almış olduğunuz ürünlerde herhangi bir teknik arıza oluşursa 2 yıl boyunca ücret olmaksızın tamirat ve 
                        onarım hizmeti vermekteyiz.
                    </p>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr"  style="background-color:lightseagreen" href="WebForm1.aspx" role="button">Arızalı Ürün Takibi</a>
                    </div>
                <div class="wthree_pvtits-services-row row">
                    <div class="col-lg-4 col-md-6 wthree_sgrid py-sm-5 py-4">
                        <span class="fa fa-cog p-sm-4 p-2"></span>
                        <h4 class="my-3">Hızlı Teknik Servis </h4>
                    </div>
                    <div class="col-lg-4 col-md-6 wthree_sgrid  py-sm-5 py-4">
                        <span class="fa fa-refresh p-sm-4 p-2"></span>
                        <h4 class="my-3">Arıza Durum Sorgulama </h4>
                    </div>
                    <div class="col-lg-4 col-md-6 wthree_sgrid  py-sm-5 py-4">
                        <span class="fa fa-camera p-sm-4 p-2"></span>
                        <h4 class="my-3">Güvenilir Teslimat</h4>
                    </div>
                    <div class="col-lg-4 col-md-6 wthree_sgrid   py-sm-5 py-4">
                        <span class="fa fa-bell-o p-sm-4 p-2"></span>
                        <h4 class="my-3">2 Yıl Ürün Garantisi </h4>
                    </div>
                    <div class="col-lg-4 col-md-6  wthree_sgrid  py-sm-5 py-4">
                        <span class="fa fa fa-smile-o p-sm-4 p-2"></span>
                        <h4 class="my-3">Yüzde 98 Memnuniyet</h4>
                    </div>
                    <div class="col-lg-4 col-md-6  wthree_sgrid   py-sm-5 py-4">
                        <span class="fa fa-plus-square-o  p-sm-4 p-2"></span>
                        <h4 class="my-3">Onlarca Kategori</h4>
                    </div>
                </div>
            </div>
        </div>
        <!-- //services-->



        <!-- contact -->
        <section class="wedo" id="contact">
            <h3 class="w3_head mb-5">Bize Ulaşın </h3>

            <p class="main_p mb-5  text-center mx-auto">
                Mağazamız ya da aldığınız herhangi bir ürüne dair sorun oluşursa bize aşşağıdaki panelden mesaj atabilirsiniz.
            </p>
            <div class="contact_grid_right mt-5 mx-auto text-center">
                <form action="#" method="post" runat="server">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad-Soyad"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="E-mail"></asp:TextBox>
                        </div>
                    </div>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Konu"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Mesajını Yazınız" TextMode="MultiLine" Height="50"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click"  BackColor="LightSeaGreen" />
                </form>
            </div>
            <div class="cpy-right text-center">
                
                <p>
                    <br />
                    © 2022 Ürün Takip Ve Teknik Servisi | Design by Enis Aktürk
                </p>
            </div>
        </section>
        <!-- //contact -->

    </div>

</body>
</html>
