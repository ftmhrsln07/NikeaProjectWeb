<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="NikeaProjectWeb.dashboard" %>
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

.product-carousel {
    display: flex;
    gap: 16px;
    padding: 16px;
}

.card1 {
    position: relative;
    flex-shrink: 0;
    border-radius: 0px;
    background-size: cover;
    background-position: center;
    height: 300px;
    display: flex;
    align-items: flex-end;
    justify-content: center;
    color: white;
    font-family: Arial, sans-serif;
}

.large-card {
    width: 350px;
    background-color: #4B0082; /* IKEA orange */
    flex-direction: column;
    justify-content: space-between;
    padding: 20px;
    margin-left: 20px;
    color: white;
}

    .large-card span {
        font-size: 18px;
        font-weight: bold;
    }

.small-card {
    width: 200px;
}

.one {
    margin-left: 100px;
}

.offers-heading {
    font-size: 22px;
    font-weight: bold;
    margin: 30px 0 60px;
    text-align: center;
}

.offers-section {
    margin: 100px auto;
    display: flex;
    gap: 50px;
    justify-content: center;
    flex-wrap: wrap;
}

.offer-card {
    width: 300px;
    display: flex;
    flex-direction: column;
    border-radius: 5px;
    overflow: hidden;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    transition: transform 0.2s ease;
    background-color: white;
    text-align: center;
}

.offer-card img {
    width: 100%;
    height: auto;
    object-fit: cover;
}

.offer-content {
    padding: 20px;
    color: #fff;
    min-height: 150px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.offer-card.red .offer-content {
    background-color: #333333;
}

.offer-card.yellow .offer-content {
    background-color: 	#333333;
}

.offer-content h3 {
    margin: 0;
    font-size: 18px;
    font-weight: bold;
}

.offer-content p {
    font-size: 14px;
    margin: 10px 0 0 0;
}

.arrow-btn {
    font-size: 24px;
    align-self: flex-start;
    margin-top: 10px;
    color: inherit;
    cursor: pointer;
}

.bed-promo-section {
    display: flex;
    margin: 40px;
    gap: 30px;
    align-items: center;
}

.bed-image {
    flex: 1;
    position: relative;
}

    .bed-image img {
        width: 100%;
        height: auto;
        border-radius: 0px;
    }

.bed-price-tag {
    position: absolute;
    bottom: 20px;
    left: 20px;
    background: white;
    padding: 10px 14px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    border-radius: 0px;
    font-size: 14px;
    line-height: 1.4;
}

    .bed-price-tag span {
        font-size: 18px;
        font-weight: bold;
    }

/* Blue Promo Box */
.bed-promo-text {
    flex: 1;
    background-color: #4B0082;
    color: white;
    padding: 40px;
    border-radius: 0px;
}

    .bed-promo-text h2 {
        margin-bottom: 15px;
    }

    .bed-promo-text p {
        font-size: 14px;
        margin-bottom: 20px;
    }

.cta-button {
    display: inline-block;
    padding: 10px 20px;
    background: white;
    color: #004f7c;
    border-radius: 0px;
    text-decoration: none;
    font-weight: bold;
}

.guarantee-section {
    display: flex;
    gap: 30px;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    margin: 100px auto;
    max-width: 1200px;
    text-align: center;
}

.guarantee-image img {
    width: 300px;
    height: auto;
    border-radius: 0;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    margin: 0 auto;
    display: block;
}

.guarantee-content {
    max-width: 600px;
}

.guarantee-box {
    width: 100px;
    height: 100px;
    background-color: #000;
    color: #fff;
    font-size: 40px;
    font-weight: bold;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto 20px;
    border-radius: 4px;
}

.guarantee-content p {
    font-size: 15px;
    color: #333;
    line-height: 1.6;
}

.guarantee-subtitle {
    font-weight: 600;
    margin-top: 20px;
}

.guarantee-link {
    color: #0058a3;
    text-decoration: none;
    font-size: 14px;
}

.guarantee-link:hover {
    text-decoration: underline;
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

.section {
    display: flex;
    flex-wrap: wrap;
    justify-content: center; /* Center horizontally */
    gap: 20px;
    margin: 30px auto;
    padding: 0 20px;
    max-width: 1200px;
}

.card {
    background: white;
    border-radius: 4px;
    box-shadow: 0 1px 4px rgba(0,0,0,0.1);
    transition: transform 0.2s ease;
    width: 250px;
    text-align: center;
    padding: 20px;
}

.card img {
    width: 100%;
    height: auto;
    border-radius: 4px;
}

.card p {
    margin-top: 10px;
    font-size: 16px;
}
.card:hover {
    transform: translateY(-5px);
}


    </style>
   
         <!-- Hero and Right Box Section -->
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

    <div class="product-carousel">
    <div class="card1 large-card">
        <span>See all new products</span>
        <a href="productlist.aspx" class="arrow-btn">→</a>
    </div>

    <div class="card1 small-card" style="background-image: url('https://www.ikea.com/ext/ingkadam/m/405449bdfdd19f75/original/PH202355.jpg?f=xxs');">
        <div class="label">Living Room</div>
    </div>
    <div class="card1 small-card" style="background-image: url('https://www.ikea.com/ext/ingkadam/m/42799f49d637517e/original/PH200748.jpg?f=m');">
        <div class="label">Kitchen</div>
    </div>
    <div class="card1 small-card" style="background-image: url('https://www.ikea.com/ext/ingkadam/m/6359ddcb84a99c02/original/PH202304.jpg?f=xxs');">
        <div class="label">Bedroom</div>
    </div>
    <div><h1 class="one">New products</h1>
        <p class="one">Looking for the latest additions to the NIKEA range? Discover a wide selection of brand-new furniture, home décor, and smart solutions designed to make your everyday life more comfortable, stylish, and affordable. From fresh seasonal trends to innovative space-saving ideas, explore what’s new and be inspired to refresh every room in your home.</p></div>
</div>

    <!-- More Than Just Offers Section -->
<h2 class="offers-heading">More than just an offers</h2>
<div class="offers-section">
    <div class="offer-card red">
        <img src="https://www.ikea.com/ext/ingkadam/m/2c6710667e97a8d8/original/PE926671.JPG?f=m" alt="Bed Offer" />
        <div class="offer-content">
            <h3>Our Lowest Prices</h3>
            <p>Lowest possible prices without compromising on quality.</p>
            <span class="arrow-btn">→</span>
        </div>
    </div>
    <div class="offer-card red">
        <img src="https://www.ikea.com/ext/ingkadam/m/29b29e9a7bd20ee3/original/PE944401.JPG?f=m" alt="Daybed Offer" />
        <div class="offer-content">
            <h3>New lower prices</h3>
            <p>New lower prices. Same great quality. Browse over 400+ new lower price products</p>
            <span class="arrow-btn">→</span>
        </div>
    </div>
    <div class="offer-card yellow">
        <img src="https://www.ikea.com/ext/ingkadam/m/461f32a6bfb6bef2/original/PE965708.jpg?f=m" alt="RM10 Offer" />
        <div class="offer-content">
            <h3>Everything RM10 and below</h3>
            <p>Shop everyday essentials to complete your home, all under RM10 and below.</p>
            <span class="arrow-btn">→</span>
        </div>
    </div>
</div>

    <!-- Category Navigation Section -->
<!-- <div class="category-bar">
    <div class="category-item">
        <img src="Images/whatsnew.jpg" alt="What's new?" />
        <p>What's new?</p>
    </div>
    <div class="category-item">
        <img src="Images/sleep.jpg" alt="Sleep essentials" />
        <p>Living Ware</p>
    </div>
    <div class="category-item">
        <img src="Images/sofa.jpg" alt="Sofas & armchairs" />
        <p>Kitchen Ware</p>
    </div>
    <div class="category-item">
        <img src="Images/tablechair.png" alt="Tables & chairs" />
        <p>Bedroom ware</p>
    </div>
</div>
-->
    <!-- Main Bed Promotion Section -->
<div class="bed-promo-section">
    <div class="bed-image">
        <img src="https://www.ikea.com/ext/ingkadam/m/1ba6d726bf85e272/original/PH199283_SHI_001.jpg?f=xxxl" alt="Bedroom Set" />
        <div class="bed-price-tag">
            <strong>MALM</strong><br />
            Bed Frame, high<br />
            <span>RM1,099</span>
        </div>
    </div>
    <div class="bed-promo-text">
        <h2>Receive a RM100 gift card when you buy a bed</h2>
        <p>
            Spend RM1,000 and above on any bed and receive a RM100 NiKEA Gift Card. Available online and in-store from 22 May – 11 June 2025.
        </p>
        <a href="#" class="cta-button">Shop now</a>
    </div>
</div>

<!-- Affordable Services Section -->
<!-- <h3 class="section-heading">Explore our affordable services</h3>
<div class="services-section">
    <div class="service-card">
        <img src="https://www.ikea.com/images/parcel-delivery-as-low-as-rm10-81043f6e79a3eb1ffebf5e3823def8ab.jpg?f=xxs" alt="Parcel delivery" />
        <div class="overlay-text">Parcel delivery<br /><span>Now as low as RM10</span></div>
    </div>
    <div class="service-card">
        <img src="https://www.ikea.com/images/ikea-coworker-at-check-out-5b0afc67df627ac9e5b543aa734badfb.jpg?f=xxs" alt="Installment Plan" />
        <div class="overlay-text">0% Installment<br />Payment Plan</div>
    </div>
    <div class="service-card">
        <img src="https://www.ikea.com/images/customer-collect-their-items-from-the-click-and-collect-coun-5c7d05be9548ddec9a7bb59fab6a1ccf.jpg?f=xxs" alt="Click and Collect" />
        <div class="overlay-text">FREE<br />Click & Collect<br />service in-store</div>
    </div>
</div> -->

<!-- Office Guarantee Section -->
<div class="guarantee-section">
    <div><h1 class="one">Guarantees</h1>
    <p class="one">We’ve created guarantee information for many of our products and have gathered them all here. Because, while we believe in the quality and durability of our products, we like to have your back.

Good to know
Our guarantees start on the day of purchase – so always keep the original purchase receipt as proof of purchase.</p></div>
    <div class="guarantee-image">
        <img src="https://www.ikea.com/ext/ingkadam/m/35e0dbd55af563/original/PH200292.jpg?f=m" alt="Office Workspace" />
    </div>
    <div class="guarantee-content">
        <div class="guarantee-box">10</div>
        <p>
            We offer a 10-year guarantee that covers defects in material, workmanship, and function for office furniture.
            The desks, tables, storage, screens, and room dividers covered in this guarantee are defects in materials,
            workmanship and function on all main parts in the BEKANT storage, IDÅSEN series, GALANT storage, HÄLLAN storage, MITTZON series, TROTTEN series and RODULF desk from the date of purchase at IKEA.
            <br /><br />
            All the guarantees are subject to the terms and conditions stated in the below booklets.
        </p>
        <div class="guarantee-subtitle">Living room furniture guarantee information</div>
        <a href="documents/guarantee.pdf" target="_blank" class="guarantee-link">Open PDF (172.71 KB)</a>
    </div>
</div>

<div class="guarantee-section">
    <div class="guarantee-image">
        <img src="https://www.ikea.com/ext/ingkadam/m/3b61c68888644ac9/original/PH200739.jpg?f=m" alt="Office Workspace" />
    </div>
    <div class="guarantee-content">
        <div class="guarantee-box">10</div>
        <p>
            We offer a 10-year guarantee that covers defects in material, workmanship, and function for office furniture.
            The desks, tables, storage, screens, and room dividers covered in this guarantee are defects in materials,
            workmanship and function on all main parts in the BEKANT storage, IDÅSEN series, GALANT storage, HÄLLAN storage, MITTZON series, TROTTEN series and RODULF desk from the date of purchase at IKEA.
            <br /><br />
            All the guarantees are subject to the terms and conditions stated in the below booklets.
        </p>
        <div class="guarantee-subtitle">Kicthen furniture guarantee information</div>
        <a href="documents/guarantee.pdf" target="_blank" class="guarantee-link">Open PDF (172.71 KB)</a>
    </div>
</div>

<div class="guarantee-section">
    <div class="guarantee-image">
        <img src="https://www.ikea.com/ext/ingkadam/m/23334a36b52e9ee4/original/PH199410.jpg?f=m" alt="Office Workspace" />
    </div>
    <div class="guarantee-content">
        <div class="guarantee-box">10</div>
        <p>
            We offer a 10-year guarantee that covers defects in material, workmanship, and function for office furniture.
            The desks, tables, storage, screens, and room dividers covered in this guarantee are defects in materials,
            workmanship and function on all main parts in the BEKANT storage, IDÅSEN series, GALANT storage, HÄLLAN storage, MITTZON series, TROTTEN series and RODULF desk from the date of purchase at IKEA.
            <br /><br />
            All the guarantees are subject to the terms and conditions stated in the below booklets.
        </p>
        <div class="guarantee-subtitle">Bedroom furniture guarantee information</div>
        <a href="documents/guarantee.pdf" target="_blank" class="guarantee-link">Open PDF (172.71 KB)</a>
    </div>
</div>

<!-- Promo section -->
<div class="section">
    <div class="card">
        <img src="https://www.ikea.com/images/collect-at-nearest-ikea-store-d364315f403fce877bf93fed97a49ee5.jpg?f=xxs" alt="Buy Online" />
        <p>Buy Online, Pick Up in Store</p>
    </div>
    <div class="card">
        <img src="https://www.ikea.com/images/a-small-and-streamlined-kitchen-has-voxtorp-fronts-in-oak-ef-feec168207db87ff8f28087c62c7d47e.jpg?f=xxxl" alt="Kitchen Organizers" />
        <p>View All Kitchen Organizers</p>
    </div>
    <div class="card">
        <img src="https://www.ikea.com/images/our-customer-care-centre-is-assisting-the-customer-via-a-cal-f63dbf96652170da38668e275c2c264a.jpg?f=xxxs" alt="Contact" />
        <p>Need help? Contact Us</p>
    </div>
</div>

<!-- Product Highlights -->
<div class="section">
    <div class="card">
        <img src="https://www.ikea.com/ext/ingkadam/m/2a6145fb2dcbc231/original/PH200345.jpg?f=xl" alt="Bed" />
        <p>N-Cool Collection</p>
    </div>
    <div class="card">
        <img src="https://www.ikea.com/ext/ingkadam/m/4d1ff7f1ffc043bd/original/PH200623.jpg?f=sg" alt="Storage" />
        <p>Room Storage Solutions</p>
    </div>
    <div class="card">
        <img src="https://www.ikea.com/images/a-wall-with-kungsfors-wall-storage-with-glass-storage-jars-b-d61a622e254993b5884b768cde644252.jpg?f=xl" alt="Kitchen Set" />
        <p>Kitchen Cabinets</p>
    </div>
</div>

    <!-- Footer Section -->
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
