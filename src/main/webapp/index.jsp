<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>E-commerce</title>
    <%--Bootstrap library--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles/home.css">
    <link rel="stylesheet" href="styles/normalize.css">


    <style>

    </style>
</head>
<body>
<%--HOME--%>
<main class="home-section">
    <%--NAV BAR--%>
    <nav class="navbar navbar-expand-lg bg-body-transparent">
        <div class="container-fluid">
        <img class="" src="">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Category
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" style="background-color: #f4f4f4" href="#">Cakes</a></li>
                            <li><a class="dropdown-item" style="background-color: #f4f4f4" href="#">Cup Cakes</a></li>
                            <%--<li><hr class="dropdown-divider"></li>--%>
                            <li><a class="dropdown-item" style="background-color: #f4f4f4" href="#">Bento Cakes</a></li>
                            <li><a class="dropdown-item" style="background-color: #f4f4f4" href="#">Desserts</a></li>
                            <li><a class="dropdown-item" style="background-color: #f4f4f4" href="#">Cookies</a></li>
                            <li><a class="dropdown-item" style="background-color: #f4f4f4" href="#">Brownies</a></li>
                            <li><a class="dropdown-item" style="background-color: #f4f4f4" href="#">Drinks</a></li>
                        </ul>
                    </li>

                    <%--<li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Login</a>
                    </li>
--%>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="admin_login.jsp">Admin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Contact</a>
                    </li>
                   <%-- <li class="nav-item">
                        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                    </li>--%>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                    <button class="btn btn-outline-success" type="submit">Login</button>
                    <button class="btn btn-outline-success" type="submit">Cart</button>
                </form>
            </div>
        </div>
    </nav>

        <!-- Video from coverr.co -->
        <video class="video-bg" autoplay muted loop>
            <source src="assests/video/cake1.mp4" type="video/mp4" />
        </video>

        <div class="video-overlay">
            <h1>Full-Screen Background Video <br>Using CSS Grid &amp; object-fit</h1>
        </div>
</main>

<br>
<br>
<br>


<%--===============MENU===============--%>
<main class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000" id="#carouselExampleControls">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="cards-wrapper">
                <div class="card">
                    <div class="image-wrapper">
                        <img src="https://codingyaar.com/wp-content/uploads/multiple-items-carousel-slide-1-card-1.jpg" alt="...">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                            content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <div class="card">
                    <div class="image-wrapper">
                        <img src="https://codingyaar.com/wp-content/uploads/multiple-items-carousel-slide-1-card-2.jpg" alt="...">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                            content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <div class="card">
                    <div class="image-wrapper">
                        <img src="https://codingyaar.com/wp-content/uploads/multiple-items-carousel-slide-1-card-3.jpg" alt="...">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                            content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="cards-wrapper">
                <div class="card">
                    <div class="image-wrapper">
                        <img src="https://codingyaar.com/wp-content/uploads/multiple-items-carousel-slide-2-card-1.jpg" alt="...">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                            content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <div class="card">
                    <div class="image-wrapper">
                        <img src="https://codingyaar.com/wp-content/uploads/multiple-items-carousel-slide-2-card-2.jpg" alt="...">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                            content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <div class="card">
                    <div class="image-wrapper">
                        <img src="https://codingyaar.com/wp-content/uploads/multiple-items-carousel-slide-2-card-3.jpg" alt="...">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                            content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="cards-wrapper">
                <div class="card">
                    <div class="image-wrapper">
                        <img src="https://codingyaar.com/wp-content/uploads/bootstrap-multiple-items-carousel-slide-3-card-1.jpg" alt="...">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                            content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <div class="card">
                    <div class="image-wrapper">
                        <img src="https://codingyaar.com/wp-content/uploads/multiple-items-carousel-slide-3-card-2.jpg" alt="...">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                            content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <div class="card">
                    <div class="image-wrapper">
                        <img src="https://codingyaar.com/wp-content/uploads/multiple-items-carousel-slide-3-card-3.jpg" alt="...">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                            content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</main>




<%--CATEGORY--%>
<%--<main class="home-category">

        <h1>Responsive Card Grid Layout</h1>
        <ul class="cards">
            <li class="cards_item">
                <div class="category-card">
                    <div class="card_image"><img src="https://picsum.photos/500/300/?image=10"></div>
                    <div class="card_content">
                        <h2 class="card_title">Card Grid Layout</h2>
                        <p class="card_text">Demo of pixel perfect pure CSS simple responsive card grid layout</p>
                        <button class="btn card_btn">Read More</button>
                    </div>
                </div>
            </li>
            <li class="cards_item">
                <div class="category-card">
                    <div class="card_image"><img src="https://picsum.photos/500/300/?image=5"></div>
                    <div class="card_content">
                        <h2 class="card_title">Card Grid Layout</h2>
                        <p class="card_text">Demo of pixel perfect pure CSS simple responsive card grid layout</p>
                        <button class="btn card_btn">Read More</button>
                    </div>
                </div>
            </li>
            <li class="cards_item">
                <div class="category-card">
                    <div class="card_image"><img src="https://picsum.photos/500/300/?image=11"></div>
                    <div class="card_content">
                        <h2 class="card_title">Card Grid Layout</h2>
                        <p class="card_text">Demo of pixel perfect pure CSS simple responsive card grid layout</p>
                        <button class="btn card_btn">Read More</button>
                    </div>
                </div>
            </li>
            <li class="cards_item">
                <div class="category-card">
                    <div class="card_image"><img src="https://picsum.photos/500/300/?image=14"></div>
                    <div class="card_content">
                        <h2 class="card_title">Card Grid Layout</h2>
                        <p class="card_text">Demo of pixel perfect pure CSS simple responsive card grid layout</p>
                        <button class="btn card_btn">Read More</button>
                    </div>
                </div>
            </li>
            <li class="cards_item">
                <div class="category-card">
                    <div class="card_image"><img src="https://picsum.photos/500/300/?image=17"></div>
                    <div class="card_content">
                        <h2 class="card_title">Card Grid Layout</h2>
                        <p class="card_text">Demo of pixel perfect pure CSS simple responsive card grid layout</p>
                        <button class="btn card_btn">Read More</button>
                    </div>
                </div>
            </li>
            <li class="cards_item">
                <div class="category-card">
                    <div class="card_image"><img src="https://picsum.photos/500/300/?image=2"></div>
                    <div class="card_content">
                        <h2 class="card_title">Card Grid Layout</h2>
                        <p class="card_text">Demo of pixel perfect pure CSS simple responsive card grid layout</p>
                        <button class="btn card_btn">Read More</button>
                    </div>
                </div>
            </li>
        </ul>

</main>--%>

<br>
<br>
<br>

<footer class="footer-section">
    <div class="container">
        <div class="footer-cta pt-5 pb-5">
            <div class="row">
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="fas fa-map-marker-alt"></i>
                        <div class="cta-text">
                            <h4>Find us</h4>
                            <span>1010 Avenue, sw 54321, chandigarh</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="fas fa-phone"></i>
                        <div class="cta-text">
                            <h4>Call us</h4>
                            <span>9876543210 0</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="far fa-envelope-open"></i>
                        <div class="cta-text">
                            <h4>Mail us</h4>
                            <span>mail@info.com</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-content pt-5 pb-5">
            <div class="row">
                <div class="col-xl-4 col-lg-4 mb-50">
                    <div class="footer-widget">
                        <div class="footer-logo">
                            <a href="index.html"><img src="https://i.ibb.co/QDy827D/ak-logo.png" class="img-fluid" alt="logo"></a>
                        </div>
                        <div class="footer-text">
                            <p>Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do eiusmod tempor incididuntut consec tetur adipisicing
                                elit,Lorem ipsum dolor sit amet.</p>
                        </div>
                        <div class="footer-social-icon">
                            <span>Follow us</span>
                            <a href="#"><i class="fab fa-facebook-f facebook-bg"></i></a>
                            <a href="#"><i class="fab fa-twitter twitter-bg"></i></a>
                            <a href="#"><i class="fab fa-google-plus-g google-bg"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 mb-30">
                    <div class="footer-widget">
                        <div class="footer-widget-heading">
                            <h3>Useful Links</h3>
                        </div>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Contact</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 mb-50">
                    <div class="footer-widget">
                        <div class="footer-widget-heading">
                            <h3>Subscribe</h3>
                        </div>
                        <div class="footer-text mb-25">
                            <p>Don’t miss to subscribe to our new feeds, kindly fill the form below.</p>
                        </div>
                        <div class="subscribe-form">
                            <form action="#">
                                <label>
                                    <input type="text" placeholder="Email Address">
                                </label>
                                <button><i class="fab fa-telegram-plane"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 text-center text-lg-left">
                    <div class="copyright-text">
                        <p>Copyright &copy; 2025, All Right Reserved <a href="https://codepen.io/anupkumar92/">Dilsha</a></p>
                    </div>
                </div>
               <%-- <div class="col-xl-6 col-lg-6 d-none d-lg-block text-right">
                    <div class="footer-menu">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Terms</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Policy</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

<script>
    // Increase slide speed
    const carouselElement = document.querySelector('#carouselExampleControls');
    const carouselInstance = new bootstrap.Carousel(carouselElement, {
        interval: 1500, // Set slide interval to 1.5 seconds
        ride: 'carousel'
    });
</script>
</body>
</html>