<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="NikeaProjectWeb.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <style>

.about-us-section {
    padding: 60px 40px;
    background-color: #f5f5f5;
    color: #333;
}

.about-title {
    font-size: 36px;
    margin-bottom: 10px;
    font-weight: bold;
}

.about-mission {
    font-size: 16px;
    max-width: 700px;
    margin-bottom: 40px;
}

.about-container {
    display: flex;
    flex-wrap: wrap;
    gap: 40px;
    align-items: flex-start;
}

.about-content {
    flex: 1 1 400px;
    max-width: 600px;
}

    .about-content h2 {
        font-size: 22px;
        margin-top: 20px;
        margin-bottom: 10px;
    }

    .about-content p {
        font-size: 15px;
        line-height: 1.6;
        margin-bottom: 15px;
    }
        /* Founder Quote Section */
.founder-quote {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
    max-width: 1200px;
    margin: 4rem auto;
    gap: 2rem;
}

.quote-text {
    flex: 1;
    min-width: 300px;
    text-align: left;
    font-size: 1.2rem;
    font-style: italic;
    color: #111;
}

.quote-text span {
    display: block;
    margin-top: 1rem;
    font-size: 0.95rem;
    font-style: normal;
    color: #444;
}

.quote-image {
    flex: 1;
    max-width: 400px;
}

.quote-image img {
    width: 100%;
    border-radius: 0px;
}

/* History Section */
.ikea-history {
    display: flex;
    flex-wrap: wrap;
    max-width: 1200px;
    margin: 4rem auto;
    background-color: #fff9c4;
    border-radius: 0px;
    overflow: hidden;
}

.history-image {
    flex: 1;
    min-width: 300px;
}

.history-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.history-text {
    flex: 1;
    padding: 2rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.history-text h2 {
    font-size: 1.5rem;
    margin-bottom: 1rem;
    color: #111;
}

.history-text p {
    margin-bottom: 1.5rem;
    line-height: 1.6;
    font-size: 1rem;
}


        /* Center About Section Container */
        .about-us-section {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }

        .about-container {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 2rem;
        }

        .about-title {
            font-size: 2rem;
            text-align: center;
            margin-bottom: 1rem;
        }

        .about-mission {
            text-align: center;
            max-width: 800px;
            margin: 0 auto 2rem auto;
        }

        .about-content {
            flex: 1;
            min-width: 300px;
        }

        .about-image img {
            width: 100%;
            max-width: 400px;
            border-radius: 0px;
        }

        .contact-prompt {
           margin-top: 30px;
           font-weight: 500;
         }
        .contact-button {
            display: inline-block;
            margin-top: 1rem;
            padding: 0.5rem 1rem;
            background-color: black;
            color: white;
            text-decoration: none;
            border-radius: 0px;
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

    <section class="about-us-section">
        <h1 class="about-title">About Us</h1>
        <p class="about-mission">
            At Furni, our mission is to provide high-quality furniture and a seamless shopping experience.
            We believe in making online shopping easy, secure, and accessible for everyone.
        </p>

        <div class="about-container">
            <div class="about-content">
                <h2>Our Story</h2>
                <p>
                    Founded in 2020, we started as a small team passionate about delivering great furniture with excellent service.
                    Over the years, we've grown into a trusted name serving thousands of customers worldwide.
                </p>

                <p class="contact-prompt">Want to know more or get in touch?</p>
                <a href="Contact.aspx" class="contact-button">Contact Us →</a>
            </div>

            <div class="about-image">
                <img src="/images/about-team.png" alt="Team illustration" />
            </div>
        </div>
    </section>

    <!-- Moved outside the about-container -->
    <section class="founder-quote">
        <div class="quote-text">
            <p>“Most things still remain to be done. A glorious future!”</p>
            <span>– Ingvar Kamprad<br />NIKEA Founder</span>
        </div>
        <div class="quote-image">
            <img src="https://www.ikea.com/images/a-portrait-of-ikea-founder-ingvar-kamprad-outdoors-smiling-w-1d925b797ba75cec737546fca99402f8.jpg?f=xl" alt="Ingvar Kamprad" />
        </div>
    </section>

    <section class="ikea-history">
        <div class="history-image">
            <img src="https://www.ikea.com/images/the-cover-photo-of-the-1973-ikea-catalogue-showing-a-couple--6ea3d041bbdc2e239d856444b9faeb7b.jpg?f=xl" alt="Vintage IKEA" />
        </div>
        <div class="history-text">
            <h2>A brief history of NIKEA</h2>
            <p>
                The NIKEA story began in a small village in Sweden. At the heart of the brand, with an ever-evolving spirit to make a better life at home affordable for everyone. Learn about the development of IKEA — decade by decade.
            </p>
            <button class="btn-black">Learn more about the history of NIKEA</button>
        </div>
    </section>

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