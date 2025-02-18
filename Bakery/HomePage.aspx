<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Bakery.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
* {
            margin: 0px;
            /* background-color: antiquewhite; */
        }

        body {
            /*            background-color: aquamarine;*/
        }

        .main {
            width: 100%;
            margin-left: auto;
            margin-right: auto;
            display: block;
            background-color: antiquewhite;
        }


        .navigation {
            width: 100%;
            height:50px;
            display: flex;
            justify-content: space-between;
            z-index: 1;
            position: fixed;
/*            opacity: 0.7;*/
             background-color:#4e342e; 
        }

        a {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .logo {
            width: 50px;
            height: 50px;
            background-color:#4e342e;
        }

        .links {
            width: 50%;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            background-color:#4e342e;
        }

        .links a{
            color:white
        }

        .links:hover{
/*            background-color:antiquewhite;*/
        }

        .links a:hover{
    color:antiquewhite;
/*    background-color:antiquewhite;*/
}
        .poster {
            margin-bottom: 0px;
            z-index: 0;
            width: 100%;
        }

        .items {
            display: flex;
            justify-content: space-evenly;
            text-align: center;
            align-items: center;
            padding: 20 px;
        }

        h2 {
            text-align: center;
            background-color: antiquewhite;
            padding: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .itemscontainer {
            background-color: antiquewhite;
            margin-top: -4px;
            width: 90%;
            margin-left: auto;
            margin-right: auto;
            display: block;
        }

        .textblack {
            color: black;
            font-weight: 700;
        }

        .posterdiv {
            margin-bottom: 0px;
        }

        .footer {
            background-color: #4e342e;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        .footer-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            align-items: center;
            max-width: 1200px;
            margin: auto;
        }

        .footer-container div {
            margin: 10px;
            flex: 1;
            min-width: 200px;
        }

        .footer h2,
        .footer h3 {
            color: #ffcc80;
        }

        .footer h2 {
            background-color: #4e342e;
            display: flex;
            justify-content: center;
            align-content: center;
        }

        .footer ul {
            list-style: none;
            padding: 0;
        }

        .footer ul li {
            margin: 5px 0;
        }

        .footer a {
            color: white;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .footer-bottom {
            margin-top: 20px;
            font-size: 14px;
        }

        .bestSellHeader {
            margin-top: 20px;
        }

        .bestSellDiv {
            width: 200px;
            border: 2px solid black;
            padding: 10px;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .bestSellImg {
            height: 200px;
            height: 200px;
        }

        .bestSellName {
            font-weight: 700;
            text-align: center;
        }

        .bestSellPrice {
            color: red;
            font-weight: 1000;
            font-size: 21px;
            text-align: center;
            padding: 10px;
        }

        .bestSellButton {
            height: 40px;
            width: 200px;
            background-color: #4e342e;
            color: white;
        }

        .bestSellFullDiv{
            display: flex;
            justify-content: space-evenly;
            align-items: center;
        }

    </style>
   </head>
<body>

<form id="form1" runat="server">
        <div>
            <div class="main">
                <div class="navbar">
                    <div class="navigation">
                        <div>
                            <img src="images/logo.png" alt="" class="logo">
                        </div>
                        <div class="links">
                            <div><a href="#">Home</a></div>
                            <div><a href="#">About</a></div>
                            <div><a href="#">Contact</a></div>
                            <div><a href="#">Feedback</a></div>
                        </div>
                    </div>
                </div>

                <div class="posterdiv">
                    <img src="images/tmp2.png" width="900px" height="100%" class="poster" alt="">
                </div>

                <div class="itemscontainer">
                    <div>
                        <h2>Our Products</h2>
                    </div>
                    <div class="items">
        <asp:Repeater ID="productReader" runat="server">
            <ItemTemplate>
                <div>
                    <div>
                        <a href="#"><img src='<%# Eval("p_img") %>' alt="" height="80px" width="80px"></a>
                    </div>
                    <div>
                        <a href="#" class="textblack"><%# Eval("p_name") %></a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>


                    <div>
                        <div>
                            <img src="images/tmp1.png" height="400px" width="350px" />
                            <img src="images/tmp2.png" height="400px" width="650px" />
                        </div>
                        <div>
                            <img src="images/tmp4.jpg" height="400px" width="700px" />
                            <img src="images/tmp3.jpg" height="400px" width="400px" />
                        </div>
                        <div></div>
                    </div>
                </div>

                <div>
                    <div class="bestSellHeader">
                        <h2>Our Best Seller</h2>
                    </div>
                    <div class="bestSellFullDiv">
                        <div class="bestSellDiv">
                            <img src="images/Cake.png" alt="" class="bestSellImg">
                            <p class="bestSellName">Cake</p>
                            <p class="bestSellPrice">10$</p>
                            <button class="bestSellButton">Buy Now</button>
                        </div>
                        <div class="bestSellDiv">
                            <img src="images/Cake.png" alt="" class="bestSellImg">
                            <p class="bestSellName">Cake</p>
                            <p class="bestSellPrice">10$</p>
                            <button class="bestSellButton">Buy Now</button>
                        </div>
                        <div class="bestSellDiv">
                            <img src="images/Cake.png" alt="" class="bestSellImg">
                            <p class="bestSellName">Cake</p>
                            <p class="bestSellPrice">10$</p>
                            <button class="bestSellButton">Buy Now</button>
                        </div>
                        <div class="bestSellDiv">
                            <img src="images/Cake.png" alt="" class="bestSellImg">
                            <p class="bestSellName">Cake</p>
                            <p class="bestSellPrice">10$</p>
                            <button class="bestSellButton">Buy Now</button>
                        </div>
                        <div class="bestSellDiv">
                            <img src="images/Cake.png" alt="" class="bestSellImg">
                            <p class="bestSellName">Cake</p>
                            <p class="bestSellPrice">10$</p>
                            <button class="bestSellButton">Buy Now</button>
                        </div>
                    </div>
                </div>

                <footer class="footer">
                    <div class="footer-container">
                        <div class="footer-about">
                            <h2><img src="images/logo.png" alt="" height="75" width="auto">Sweet Delights Bakery</h2>
                            <p>Freshly baked goods made with love and the finest ingredients.</p>
                        </div>
                        <div class="footer-links">
                            <h3>Quick Links</h3>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Menu</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                        <div class="footer-contact">
                            <h3>Contact Us</h3>
                            <p>Email: admin@sweetdelights.com</p>
                            <p>Phone: +91 7567264835</p>
                            <p>Location: 107 SRKI, Athwa Lines, Surat</p>
                        </div>
                        <div class="footer-social">
                            <h3>Follow Us</h3>
                            <a href="#">Facebook</a> | <a href="#">Instagram</a> | <a href="#">Twitter</a>
                        </div>
                    </div>
                    <p class="footer-bottom">&copy; 2025 Sweet Delights Bakery. All rights reserved.</p>
                </footer>
            </div>
    </form></body>
</html>
