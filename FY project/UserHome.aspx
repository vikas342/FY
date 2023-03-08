<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous">

    </script>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>

    <style>
        

    #cat_div:hover{
        background-color:lightgray;
        border-radius:25px;
        
    }
    </style>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Sriracha&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                      <a class="navbar-brand" href="UserHome.aspx" style="background: #121FCF;
background: linear-gradient(to top right, #121FCF 40%, #CF1512 60%);
-webkit-background-clip: text;
-webkit-text-fill-color: transparent; font-size:25px ;font-weight:bolder; font-family: 'Sriracha', cursive;"><span>
                       <img src="Images/Eshopping.png" style="width:70px" alt="Shopppy" height ="30" /></span>Shopppy</a>
   
                </div>
                
                
                <div class="navbar-collapse collapse text-center" style="font-family: 'Roboto', sans-serif; font-size:15px; font-weight:bolder">
                    <ul class ="nav navbar-nav navbar-right">
                        <li> <a href ="UserHome.aspx">Home</a> </li>
                        <li><a href ="UserOrders.aspx">Orders</a> </li>
                        <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">
                                <li> <a href ="Products.aspx">All Products</a></li>
                                <li role="separator" class ="divider "></li> 
                                <li class ="dropdown-header ">Men</li>
                                <li role="separator" class ="divider "></li> 

                                <li> <a href="ManTshirt.aspx">T-shirt</a></li>
                                <li> <a href ="ManShirt.aspx">Shirts</a></li>
                                <li> <a href ="ManDenims.aspx">Jeans</a></li>
                                <li role="separator" class ="divider "></li>
                                <li class ="dropdown-header ">Women</li>
                                <li role="separator" class ="divider "></li>
                                <li> <a href ="WomanTop.aspx">Top</a></li>
                                <li> <a href ="WomanKurtis.aspx">Kurtis</a></li>
                                <li> <a href ="WomanSarees.aspx">Sarees</a></li>
                            </ul>

                        </li>
                        <li><a href ="Contact.aspx">Contact Us</a> </li>

                         <li ><a href ="About.aspx">About Us</a> </li>


                        <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                Cart<span class="badge" id="pCount" runat="server"></span>

                            </button>
                        </li>
                        <li >

                            <asp:Button ID="btnLogin" CssClass ="btn btn-default navbar-btn " runat="server" Text="SignIn" OnClick="btnLogin_Click" />
                            <asp:Button ID="btnlogout" CssClass ="btn btn-default navbar-btn " runat="server" Text="Sign Out" OnClick="btnlogout_Click" />
                            
                        </li>
                        <li>
                        <asp:Button ID="Button1" CssClass ="btn btn-link navbar-btn " runat="server" Text=""  />
                        </li>
                        
                    </ul>
                </div>
            </div>
        
     </div>

               <!---image slider---->
        <div class="container-fluid">

            <h2>
                Carousel Example</h2>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>

                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <a href="WomansClothing.aspx">
                        <img src="ImgSlider/bannner2.gif" alt="Women's colothing offer" style="width: 100%; height:300px;">
                            </a>
                        <div class="carousel-caption">
                          >
                        </div>
                    </div>
                    <div class="item">
                        <a href="MensClothing.aspx">


                        <img src="ImgSlider/banner1.jpg" alt="Men's clothing offers" style="width: 100%; height:300px;">
                        </a>
                        <div class="carousel-caption">
                            
                        </div>
                    </div>
                    <div class="item">
                        <a href="ManFootwear.aspx">

                        <img src="ImgSlider/footwear_banner2.jpg" alt="mens footwear offers" style="width: 100%; height:300px">
                        </a>
                        <div class="carousel-caption">
                           
                        </div>

                              
                    </div>
                              <div class="item">
                                  <a href="WomanFootwear.aspx">

                        <img src="ImgSlider/womansFootwearbanner.jpg" alt="womans footwear offers" style="width: 100%; height:300px">
                                  </a>
                        <div class="carousel-caption">
                           
                        </div>

                              
                    </div>
                    <div class="item">
                        <a href="Accesories.aspx">

                        <img src="ImgSlider/Accesories_banner.jpg" alt="accesories offers" style="width: 100%; height:300px">
                        </a>
                        <div class="carousel-caption">


                           
                        </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                    href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                    </span><span class="sr-only">Next</span> </a>
            </div>
        </div>
        <!---image slider End---->
    </div>
        <!---image slider End---->
    </div>
    <!---Middle COntents start---->
    <hr />
        
        
    <div class="container center ">
        <div class="row" style="margin-bottom:25px;">
            <div class="col-lg-4 "  style="padding:15px" id="cat_div">

                <a href="Accesories.aspx">

                <img class="img-circle " src="Images/accesories.jpg" alt="thumb" width="140" height="140" />
                </a>
                <h2>
                    Accesories</h2>
                <p class="text-justify">
                    Complete your outfit with our selection of accesories,We offers Watches, Sunglasses, Handbags, Scarves, Hair Accecories, Perfume and more.we have something for every style and budget.
                   </p>
                
                    <a class="btn btn-default " href="Accesories.aspx" role="button">View More &raquo;</a>
            </div>

            <div class="col-lg-4 home_category"  style="padding:15px" id="cat_div">

                <a href="MensClothing.aspx">

                <img class="img-circle " src="Images/mens_clothing.jpg" alt="thumb" width="140" height="140" />
                </a>
                <h2>
                    Men's clothing</h2>
                 <p class="text-justify">
                
                    We offer a variety of stylish and functional options for every occasion.We offers Tshirt, Shirt, Jeans ,Footwear and more.we have something for every style and budget. Shop now and find your new favorite outfit!
                </p>
                    <a class="btn btn-default " href="MensClothing.aspx" role="button">View More &raquo;</a>
            </div>            

                        <div class="col-lg-4 home_category"  style="padding:15px" id="cat_div">

                <a href="WomansClothing.aspx">

                <img class="img-circle " src="Images/womens_clothing.jpg" alt="thumb" width="140" height="140" />
                </a>
                <h2>
                    Women's Clothings</h2>
                <p class="text-justify">
                
                    We offer a variety of stylish and functional options for every occasion.We offers Dresses, Tops, Sarees ,Footwear and more.we have something for every style and budget. Shop now and find your new favorite outfit!
                </p>
                
                    <a class="btn btn-default " href="WomansClothing.aspx" role="button">View More &raquo;</a>
            </div>
            </div>
           
        <div class="row">            
                        <div class="col-lg-4 home_category"  style="padding:15px" id="cat_div">

                <a href="ManFootwear.aspx">

                <img class="img-circle " src="Images/mens_footwear.jpg" alt="thumb" width="140" height="140" />
                </a>
                <h2>
                    Men's Footwear</h2>
                                 <p class="text-justify">

                    Step into style and step up your game with our impressive collection of men's footwear. Whether you're looking for sleek dress shoes, comfortable sneakers, or rugged boots, we have you covered.</p>
                
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a>
            </div>            
            
            <div class="col-lg-4 home_category"  style="padding:15px" id="cat_div">


                <a href="WomanFootwear.aspx">

                <img class="img-circle " src="Images/woman footwear.jpg"  alt="thumb" width="140" height="140" />
                </a>
                <h2>
                    Woman's Footwear</h2>
                               <p class="text-justify">

                  Elevate your footwear game with our stunning collection of women's shoes. From stylish heels to comfortable flats, we have something for every occasion and every style.We have everything to up your fashion game.</p>
                
                    <a class="btn btn-default " href="WomanFootwear.aspx" role="button">View More &raquo;</a>
            </div>            
            

            <div class="col-lg-4 home_category"  style="padding:15px" id="cat_div">

                <a href="Jwellery.aspx">
                <img class="img-circle " src="Images/jwellery.jpg" alt="thumb" width="140" height="140" />
                    </a>
                
                <h2>
                    Jwellery</h2>
                                 <p class="text-justify">
Elevate your look with our stunning collection of jewelry. Our carefully curated selection features pieces crafted from the finest materials, designed to complement any outfit and occasion.</p>
                
                    
                    <a class="btn btn-default " href="jwellery.aspx" role="button">View More &raquo;</a>
                    
            </div>
        </div>
        <br />

        <br />
        </div>
        
        <div class="container-fluid">
                            <img src="Images/HOLISALE.png" alt="thumb" width="100%"  height="300px"/>

        <br />
        <br />


        <div class="panel panel-primary">
            <div class="panel-heading">
                HOLI SPECIAL SALE UPTO 50% OFF</div>
            <div class="panel-body">
                <div class="row" style="padding-top: 50px">
                    <asp:Repeater ID="rptrProducts" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-3 col-md-3 ">
                                <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                    
          <div class="thumbnail" style="height:300px">              
              <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" style="width:200px; height:200px"/>
                                        <div class="caption">
                                            <div class="probrand">
                                                <%# Eval ("BrandName") %>
                                            </div>
                                            <div class="proName">
                                                <%# Eval ("PName") %>
                                            </div>
                                            <div class="proPrice">
                                                <span class="proOgPrice">
                                                    <%# Eval ("PPrice","{0:0,00}") %>
                                                </span>
                                                <%# Eval ("PSelPrice","{0:c}") %>
                                                <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>
                                                    off) </span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
      

    </div>
    </div>
    
        
        <!---Middle COntents End---->
    



         <!---Footer COntents Start here---->
        <hr />
        <footer>
            <div class ="container ">
                <p class ="pull-right "><a href ="#">Back to top</a></p>
                <p>&copy;2020 Eshopping.in &middot; <a href ="UserHome.aspx">Home</a>&middot;<a href ="Products.aspx">Products</a>&middot;<a href ="Contact.aspx">Contact Us</a>&middot;<a href ="About.aspx">About Us</a> </p>
            </div>

        </footer>

         <!---Footer COntents End---->
    </form>
</body>
</html>
