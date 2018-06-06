<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Online_Shopping.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br /> <br /> <br /> <br /> <br /><br />
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/2.jpg" alt="New York" width="900" height="700">
                <div class="carousel-caption">
                    <h3>New York</h3>
                    <p>The atmosphere in New York is lorem ipsum.</p>
                </div>
            </div>

            <div class="item">
                <img src="images/1.jpg" alt="Chicago" width="900" height="700">
                <div class="carousel-caption">
                    <h3>Chicago</h3>
                    <p>Thank you, Chicago - A night we won't forget.</p>
                </div>
            </div>

            <div class="item">
                <img src="images/3.jpg" alt="Los Angeles" width="900" height="700">
                <div class="carousel-caption">
                    <h3>LA</h3>
                    <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- circle picture -->
    <div class="container text-center">
        <h3>THE Shopping Mall</h3>
        <p><em>We love clothes!</em></p>
        <p>We have created a fashionable clothes website. Every one like it..</p>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <p class="text-center"><strong>Woman Wears</strong></p>
            <br>
            <a href="#demo" data-toggle="collapse">
                <img src="images/lights.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
            </a>
            <div id="demo" class="collapse">
                <p>Guitarist and Lead Vocalist</p>
                <p>Loves long walks on the beach</p>
                <p>Member since 1988</p>
            </div>
        </div>


        <div class="col-sm-4">
            <p class="text-center"><strong>Woman Wears</strong></p>
            <br>
            <a href="#demo1" data-toggle="collapse">
                <img src="images/nature.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
            </a>
            <div id="demo1" class="collapse">
                <p>Guitarist and Lead Vocalist</p>
                <p>Loves long walks on the beach</p>
                <p>Member since 1988</p>
            </div>
        </div>

        <div class="col-sm-4">
            <p class="text-center"><strong>Woman Wears</strong></p>
            <br>
            <a href="#demo3" data-toggle="collapse">
                <img src="images/fjords.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
            </a>
            <div id="demo3" class="collapse">
                <p>Guitarist and Lead Vocalist</p>
                <p>Loves long walks on the beach</p>
                <p>Member since 1988</p>
            </div>
        </div>
    </div>

    <!-- Container (TOUR Section) -->
    <div class="bg-1">
        <div class="container">
            <h3 class="text-center">TOUR DATES</h3>
            <p class="text-center">Lorem ipsum we'll play you some music.<br>
                Remember to book your tickets!</p>


            <div class="row text-center">
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="paris.jpg" alt="Paris" width="400" height="300">
                        <p><strong>images/Paris</strong></p>
                        <p>Fri. 27 November 2015</p>
                        <button class="btn">Buy Tickets</button>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="images/newyork.jpg" alt="New York" width="400" height="300">
                        <p><strong>New York</strong></p>
                        <p>Sat. 28 November 2015</p>
                        <button class="btn">Buy Tickets</button>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="images/sanfran.jpg" alt="San Francisco" width="400" height="300">
                        <p><strong>San Francisco</strong></p>
                        <p>Sun. 29 November 2015</p>
                        <button class="btn">Buy Tickets</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <h3 class="text-center">Contact</h3>
        <p class="text-center"><em>We love our fans!</em></p>
        <div class="row test">
            <div class="col-md-4">
                <p>Fan? Drop a note.</p>
                <p><span class="glyphicon glyphicon-map-marker"></span>Chicago, US</p>
                <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
                <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                    </div>
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                    </div>
                </div>
                <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
                <div class="row">
                    <div class="col-md-12 form-group">
                        <button class="btn pull-right" type="submit">Send</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- finish --%>
</asp:Content>
