               <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="NikeaProjectWeb.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

.main-container {
    display: flex;
    justify-content: space-between;
    gap: 30px;
    padding: 40px;
}

.hero {
    flex: 5;
    background-color: #fff;
    padding: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-radius: 0px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
}

.hero {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 60px 40px;
    background: #ffffff;
}

    .hero img {
        width: 500px;
    }

.banner {
    width: 100%;
    margin-top: 20px;
}

    .banner img {
        width: 100%;
        height: 30%;
        display: block;
    }

.about-section {
    background: #f5f6f7;
    padding: 40px;
}

.about-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: flex-start;
    gap: 30px;
}

.about-text {
    flex: 1;
    min-width: 250px;
    max-width: 300px;
}

    .about-text h2 {
        font-size: 24px;
        margin-bottom: 10px;
    }

    .about-text p {
        font-size: 14px;
        margin-bottom: 20px;
    }

.btn-round {
    width: 36px;
    height: 36px;
    border-radius: 0%;
    background: #0058a3;
    color: white;
    border: none;
    font-size: 20px;
    cursor: pointer;
}

.hero-text h1 {
    font-size: 36px;
    margin-bottom: 10px;
}

.btn-yellow {
    background-color: #A9A9A9;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
}

.right-box {
    flex: 1;
    background-color: #fff;
    padding: 20px;
    border-left: 2px solid #ddd;
    border-radius: 0px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
}

.product-cards {
    display: flex;
    flex: 2;
    gap: 20px;
    flex-wrap: wrap;
}

.product-card {
    background: #ffffff;
    padding: 20px;
    text-align: center;
    min-width: 150px;
    flex: 1 1 150px;
}

    .product-card img {
        width: 100px;
        height: auto;
        margin-bottom: 10px;
    }

    .product-card p {
        font-size: 14px;
        margin-bottom: 5px;
        line-height: 1.3;
    }

    .product-card strong {
        font-size: 16px;
    }

.featured-products,
.why-choose-us,
.testimonials {
    padding: 40px;
    text-align: center;
    background-color: #fdfdfd;
}

    .featured-products h2,
    .why-choose-us h2,
    .testimonials h2 {
        font-size: 24px;
        margin-bottom: 30px;
    }

.product-list {
    display: flex;
    justify-content: center;
    gap: 30px;
    flex-wrap: wrap;
}

.product {
    text-align: center;
    max-width: 150px;
}

    .product img {
        width: 100px;
        height: auto;
        margin-bottom: 10px;
    }

    .product p {
        font-size: 14px;
    }

.why-choose-us ul.features {
    list-style: none;
    padding: 0;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    gap: 15px;
    max-width: 600px;
    margin: 0 auto;
    font-size: 16px;
}

.why-choose-us li::before {
    content: "✔ ";
    color: green;
}

.buying-guides {
    padding: 40px 20px;
    max-width: 1300px;
    margin: auto;
    font-family: Arial, sans-serif;
}

    .buying-guides h1 {
        font-size: 36px;
        margin-bottom: 10px;
        font-weight: bold;
        color: #111;
    }

.guide-intro {
    font-size: 16px;
    color: #444;
    margin-bottom: 15px;
}

.guide-jump-links {
    font-size: 14px;
    margin-bottom: 25px;
    color: #555;
}

    .guide-jump-links a {
        color: #0058a3;
        text-decoration: none;
        margin: 0 5px;
    }

        .guide-jump-links a:hover {
            text-decoration: underline;
        }

hr {
    border: none;
    border-top: 1px solid #ddd;
    margin: 30px 0;
}

.guide-row {
        display: flex;
        gap: 20px;
        margin: 40px 0;
}

.guide-col {
        flex: 1;
        min-width: 300px;
        background-color: #ffffff;
        padding: 20px;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
}



.self-planning {
    padding: 2rem;
    max-width: 1200px;
    margin: auto;
    font-family: sans-serif;
}

.planning-tools-list {
    padding-left: 1.5rem;
}

.planning-cards {
    display: flex;
    gap: 2rem;
    margin-top: 2rem;
    flex-wrap: wrap;
    justify-content: center;
}

.planning-card {
    flex: 1 1 300px;
    max-width: 400px;
    background-color: #fff;
    border: 1px solid #ccc;
    padding: 1.5rem;
    border-radius: 0px;
    text-align: center;
    box-shadow: 0 0 10px rgba(0,0,0,0.05);
}

.planning-card img {
    width: 100%;
    border-radius: 0px;
    margin-bottom: 1rem;
}

.btn-black {
    background-color: #000;
    color: #fff;
    padding: 0.6rem 1.2rem;
    border: none;
    border-radius: 0px;
    cursor: pointer;
    font-weight: bold;
}


.btn-black:hover {
    background-color: #333;
}

.highlight-box {
    background-color: #333333; 
    padding: 2rem;
    border-radius: 0px;
    margin-top: 2rem;
    text-align: center;
}

.text-highlight {
    color: white;
}


.planning-services {
    max-width: 1200px;
    margin: 4rem auto;
    font-family: sans-serif;
}

.planning-services-container {
    display: flex;
    flex-wrap: wrap;
    gap: 2rem;
    align-items: center;
    justify-content: center;
    background-color: #f5f5f5;
    border-radius: 12px;
    padding: 2rem;
}

.planning-image {
    flex: 1;
    min-width: 300px;
    max-width: 600px;
}

.planning-image img {
    width: 100%;
    border-radius: 0px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.planning-text {
    flex: 1;
    min-width: 300px;
    max-width: 500px;
}

.planning-text h2 {
    font-size: 1.6rem;
    margin-bottom: 1rem;
    color: #111;
}

.planning-text p {
    margin-bottom: 1.5rem;
    line-height: 1.6;
}

.testimonials blockquote {
    font-style: italic;
    font-size: 16px;
    color: #333;
    max-width: 600px;
    margin: 0 auto;
}

.testimonials span {
    display: block;
    margin-top: 10px;
    font-weight: bold;
}

.info-footer {
    padding: 40px;
    background: #fff;
    color: #444;
    font-size: 14px;
    text-align: center;
}

.footer-columns {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap: 30px;
    padding: 40px;
    background-color: #ffffff;
    color: #333;
}

.footer-column {
    flex: 1 1 200px;
    min-width: 200px;
}

    .footer-column h4 {
        margin-bottom: 10px;
        font-size: 16px;
        font-weight: bold;
    }

    .footer-column p, .footer-column ul li {
        font-size: 14px;
        margin-bottom: 8px;
        list-style: none;
    }

    .footer-column ul {
        padding: 0;
    }

.footer-column button.btn-yellow {
    margin-top: 10px;
    font-size: 14px;
    cursor: pointer;
}

</style>
     <section class="main-container">
        <!-- Left Content -->
        <div class="hero">
            <div class="hero-text">
                <h1>Welcome to NIKEA</h1>
                <p>Elegant Scandinavian furniture for modern living.</p>
                <a href="productlist.aspx" class="btn-yellow">Shop Now</a>
            </div>
            <div>
                <img src="Images/sofa1.png" alt="Sofa" />
            </div>
        </div>

        <!-- Right Box -->
        <div class="right-box">
            <h3>Special Offers</h3>
            <p>20% off on all chairs!</p>
            <hr />
            <h4>New Arrivals</h4>
            <p>Check out our ergonomic series now in stock.</p>
        </div>
    </section>

        <!-- Banner -->
    <div class="banner">
        <img src="Images/banner_dash.png" alt="Banner" />
    </div>

    <!-- About & Product Preview Section -->
<section class="about-section">
    <div class="about-container">
        <!-- Who We Are -->
        <div class="about-text">
            <h2>Who we are</h2>
            <p>Danish multinational company that designs and sells ready-to-assemble furniture, kitchen appliances and home accessories, among other useful goods. Founded in Denmark in 1953 by 25-year-old Heman Villarsen.</p>
            <button class="btn-round">&raquo;</button>
        </div>

        <!-- Product Cards -->
        <div class="product-cards">
            <div class="product-card">
                <img src="https://www.ikea.com/my/en/images/products/poaeng-rocking-chair-brown-knisa-black__0572145_pe667310_s5.jpg?f=u" alt="Blue Chair" />
                <p>Dark brown<br />with wood</p>
                <strong>RM99</strong>
            </div>
            <div class="product-card">
                <img src="https://www.ikea.com/my/en/images/products/metod-wall-cabinet-with-dish-drainer-white-lerhyttan-black-stained__0599978_pe678440_s5.jpg?f=u" alt="Blue Lamp" />
                <p>Wall cabinet<br />black stained</p>
                <strong>RM350</strong>
            </div>
            <div class="product-card">
                <img src="https://www.ikea.com/my/en/images/products/hemnes-vaestersjoen-open-wsh-stnd-w-drw-wash-basin-tap-white__1336514_pe947348_s5.jpg?f=u" alt="Blue Pot" />
                <p>Open wash<br />with drawer</p>
                <strong>RM688</strong>
            </div>
        </div>
    </div>
</section>

    <!-- Featured Products Section -->
<section class="featured-products">
    <h2>Featured Products</h2>
    <div class="product-list">
        <div class="product">
            <img src="https://www.ikea.com/my/en/images/products/lack-coffee-table-black-brown__57540_pe163122_s5.jpg?f=u" alt="T-Shirt" />
            <p>Coffee Table<br /><strong>RM30</strong></p>
        </div>
        <div class="product">
            <img src="https://www.ikea.com/my/en/images/products/skruvsta-swivel-chair-vissle-grey__0724705_pe734587_s5.jpg?f=u" alt="Un-leadphones" />
            <p>Swivel Chair<br /><strong>RM100</strong></p>
        </div>
        <div class="product">
            <img src="https://www.ikea.com/my/en/images/products/stjaernoe-bed-frame-anthracite__1298073_pe936046_s5.jpg?f=u" alt="Preebac Bag" />
            <p>Bed Frame<br /><strong>RM300</strong></p>
        </div>
        <div class="product">
            <img src="https://www.ikea.com/my/en/images/products/aelvdalen-3-seat-sofa-bed-with-chaise-longue-knisa-grey-beige__1194627_pe902024_s5.jpg?f=u" alt="Swatchatch" />
            <p>3 seat sofa bed<br /><strong>RM600</strong></p>
        </div>
    </div>
</section>

<!-- Buying Guides Section -->
<section class="buying-guides">
    <h1>Buying guides</h1>
    <p class="guide-intro">Buying guides help you to plan, buy and build our most popular furniture systems.</p>

    <nav class="guide-jump-links">
        Jump to:
        <p>Bathroom |
       Bedroom |
        Children’s IKEA |
        Home organisation |
        Workspaces |
        Kitchen & dining |
        Living room |
        Lighting |
        Outdoor |
        Textile</p>
    </nav>

    <hr />

    <!-- Guide Category Row -->
    <div class="guide-row">
        <!-- Bathroom -->
        <div class="guide-col">
            <h2>Bathroom</h2>
            <img src="https://www.ikea.com/images/bathroom-ce3f403ff33b0e7c724c9080c20ee99f.jpg?f=s" alt="Bathroom" />
            <ul class="pdf-list">
                <li><strong>ENHET</strong> buying guide <span>Open PDF (6.81 MB)</span></li>
            </ul>
        </div>

        <!-- Bedroom -->
        <div class="guide-col">
            <h2>Bedroom</h2>
            <img src="https://www.ikea.com/images/bedroom-770d69ccc0cc57344a57c766c4331dfa.jpg?f=s" alt="Bedroom" />
            <ul class="pdf-list">
                <li><strong>BOAXEL</strong> buying guide <span>Open PDF (2.68 MB)</span></li>
                <li>Beds buying guide <span>Open PDF (3.01 MB)</span></li>
                <li>ELVARLI buying guide <span>Open PDF (2.59 MB)</span></li>
                <li>JONAXEL buying guide <span>Open PDF (4.04 MB)</span></li>
                <li>PAX buying guide <span>Open PDF (6.77 MB)</span></li>
                <li>PLATSA buying guide <span>Open PDF (7.51 MB)</span></li>
            </ul>
        </div>

        <!-- Children's IKEA -->
        <div class="guide-col">
            <h2>Children's NIKEA</h2>
            <img src="https://www.ikea.com/images/childrens-ikea-760d44e254e03c77ad2d44b2916863c2.jpg?f=s" alt="Children's IKEA" />
            <ul class="pdf-list">
                <li>Children’s sleep buying guide <span>Open PDF (2.21 MB)</span></li>
                <li>SMÅSTAD buying guide <span>Open PDF (4.87 MB)</span></li>
            </ul>
        </div>
    </div>
</section>

<!-- Self-Planning Tools Section -->
<section class="self-planning">
    <h1>Self-planning tools</h1>
    <p>Finding it difficult to visualise your dream kitchen, office furniture, wardrobe or storage unit? Our interactive planning tools can transform your vision into reality. Experiment with colours, styles, dimensions, and layouts to craft the perfect design.</p>
    <p>Please note that these planning tools are no longer available. We apologise for any inconvenience. Our co-workers at your NIKEA store are always ready to help you with any home furnishing or design needs you have.</p>

    <ul class="planning-tools-list">
        <li>VIDGA window calculator</li>
        <li>Wall decal/picture frame configurator</li>
        <li>Bed frame configurator</li>
        <li>Build your own work chair & desk</li>
        <li>KALLAX planner</li>
    </ul>

    <p>Choose your area:
        <a href="#">Kitchen</a> |
        <a href="#">Bedroom</a> |
        <a href="#">Storage Solution</a> |
        <a href="#">Sofas</a> |
        <a href="#">Bathroom</a> |
        <a href="#">Workspaces</a>
    </p>

    <hr />

<!-- Planning Tool Cards -->
<section class="planning-section">
    <h2>Kitchen</h2>
    <div class="planning-cards">
        <!-- Card 1 -->
        <div class="planning-card">
            <img src="https://www.ikea.com/ext/ingkadam/m/d7701c4e03c4ae6/original/PH199566.jpg?f=m" alt="Kitchen 1" />
            <h3>Plan your dream kitchen</h3>
            <p>Try different layouts, cabinets, colours and more to see in your space with easy-to-use NIKEA kitchen planner.</p>
            <button class="btn-black">Customise your kitchen</button>
        </div>

        <!-- Card 2 -->
        <div class="planning-card">
            <img src="https://www.ikea.com/ext/ingkadam/m/3e726ae9b640e461/original/PH199563.jpg?f=m" alt="Kitchen 2" />
            <h3>Designed for everyday life</h3>
            <p>Customise the look and functionality for ENHET kitchen that suits your space, needs and taste.</p>
            <button class="btn-black">Customise your ENHET kitchen</button>
        </div>
    </div>

        <h2>Bedroom</h2>
 <div class="planning-cards">
     <!-- Card 3 -->
     <div class="planning-card">
         <img src="https://www.ikea.com/ext/ingkadam/m/99520a36c9eff25/original/PH203431.jpg?f=m" alt="Kitchen 1" />
         <h3>Plan your dream bedroom</h3>
         <p>Try different layouts, cabinets, colours and more to see in your space with easy-to-use NIKEA bedroom planner.</p>
         <button class="btn-black">Customise your bedrrom</button>
     </div>

     <!-- Card 4 -->
     <div class="planning-card">
         <img src="https://www.ikea.com/ext/ingkadam/m/c784cc443b7062d/original/PH203426.jpg?f=m" alt="Kitchen 2" />
         <h3>Designed for everyday life</h3>
         <p>Customise the look and functionality for ENHET bedrom that suits your space, needs and taste.</p>
         <button class="btn-black">Customise your ENHET bedroom</button>
     </div>
 </div>

           <h2>Living room</h2>
<div class="planning-cards">
    <!-- Card 3 -->
    <div class="planning-card">
        <img src="https://www.ikea.com/ext/ingkadam/m/b3b333581917994/original/PH204083.jpg?f=m" alt="Kitchen 1" />
        <h3>Plan your dream living room</h3>
        <p>Try different layouts, cabinets, colours and more to see in your space with easy-to-use NiKEA living room planner.</p>
        <button class="btn-black">Customise your living room</button>
    </div>

    <!-- Card 4 -->
    <div class="planning-card">
        <img src="https://www.ikea.com/ext/ingkadam/m/10209be086e5e/original/PH204081.jpg?f=m" alt="Kitchen 2" />
        <h3>Designed for everyday life</h3>
        <p>Customise the look and functionality for ENHET living room that suits your space, needs and taste.</p>
        <button class="btn-black">Customise your ENHET living room</button>
    </div>
</div>

    <!-- Highlighted Banner -->
    <div class="highlight-box">
        <h3 class="text-highlight">Let us help you plan the perfect kitchen for free</h3>
        <p class="text-highlight">Time for your dreams and ideas to take shape! You can give it a go yourself with our kitchen planner tool, or get a little help from one of our experts.</p>
        <button class="btn-black">Book your appointment today</button>
    </div>
</section>


<!-- Free Planning Services Section -->
<section class="planning-services">
    <div class="planning-services-container">
        <!-- Left: Image -->
        <div class="planning-image">
            <img src="https://www.ikea.com/images/2-ikea-co-workers-are-discussing-the-planning-design-in-stor-5996ae8a0c987061a2359a058aef5b11.jpg?f=xl" alt="Planning Help" />
        </div>

        <!-- Right: Text Box -->
        <div class="planning-text">
            <h2>Free online & in-store planning services</h2>
            <p>Do you need help with your planning for kitchen, wardrobes and storage solutions? Please reach out for online planning support or by our specialists and we’ll take care of the planning for you. It’s free of charge!</p>
            <button class="btn-black">Find out more</button>
        </div>
    </div>
</section>


<!-- Why Choose Us Section -->
<section class="why-choose-us">
    <h2>Why Choose Us?</h2>
    <ul class="features">
        <li>&#10003; Secure Payments</li>
        <li>&#10003; Fast Shipping</li>
        <li>&#10003; Easy Returns</li>
        <li>&#10003; 24/7 Support</li>
    </ul>
</section>

<!-- Customer Testimonials Section -->
<section class="testimonials">
    <h2>Customer Testimonials</h2>
    <blockquote>
        “Great products and excellent customer service!<br />
        Highly recommend.”<br />
        <span>- John D.</span>
    </blockquote>
</section>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<footer class="info-footer">
    <div class="footer-columns">
        <div class="footer-column">
            <h4>NIKEA Family</h4>
            <p>Become a Family member and enjoy rewards, discounts, and surprises all year.</p>
            <button class="btn-yellow">Join for free</button>
        </div>
        <div class="footer-column">
            <h4>NIKEA for Business</h4>
            <p>We help you create your dream business space with personalized services.</p>
            <button class="btn-yellow">Find out more</button>
        </div>
        <div class="footer-column">
            <h4>Shop at NIKEA</h4>
            <ul>
                <li>Swedish Restaurant</li>
                <li>Store Information</li>
                <li>New Products</li>
                <li>Self-planning Tools</li>
            </ul>
        </div>
        <div class="footer-column">
            <h4>Customer Service</h4>
            <ul>
                <li>Our Services</li>
                <li>Delivery</li>
                <li>Return Policy</li>
                <li>FAQ</li>
            </ul>
        </div>
        <div class="footer-column">
            <h4>This is NIKEA</h4>
            <ul>
                <li>About Us</li>
                <li>Our Swedish Heritage</li>
                <li>A Sustainable Everyday</li>
                <li>Careers</li>
            </ul>
        </div>
        <div class="footer-column">
            <h4>News & Media</h4>
            <ul>
                <li>Product Recalls</li>
                <li>Secure It</li>
                <li>Media Contacts</li>
            </ul>
        </div>
    </div>
</footer>
</asp:Content>
