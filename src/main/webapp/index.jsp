<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <title>NexusShop — Modern E‑Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ========== ROOT VARIABLES ========== */
    :root {
      --bg-body: #f9f7f4;
      --bg-card: #ffffff;
      --bg-subtle: #f2efe9;
      --primary: #1b1b2f;
      --primary-light: #2b2b42;
      --primary-soft: #e8e6ef;
      --accent: #d96c4c;       /* warm terracotta for visibility */
      --accent-hover: #c25a3c;
      --accent-soft: #fbe9e4;
      --text-dark: #14141c;
      --text-regular: #2c2c36;
      --text-muted: #5e5e6e;
      --border-light: #dedad3;
      --shadow-sm: 0 6px 18px rgba(0, 0, 0, 0.04), 0 2px 4px rgba(0, 0, 0, 0.02);
      --shadow-md: 0 12px 28px rgba(0, 0, 0, 0.05), 0 4px 12px rgba(0, 0, 0, 0.03);
      --radius-card: 28px;
      --radius-btn: 60px;
    }

    /* ========== GLOBAL RESET ========== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
      background: var(--bg-body);
      color: var(--text-regular);
      line-height: 1.55;
      -webkit-font-smoothing: antialiased;
      padding: 2rem 1.5rem 4rem;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }

    /* ========== LAYOUT CONTAINER ========== */
    .app-container {
      max-width: 1300px;
      width: 100%;
      margin: 0 auto;
    }

    /* ========== TYPOGRAPHY ========== */
    h1, h2, h3, h4 {
      font-weight: 700;
      letter-spacing: -0.02em;
      color: var(--text-dark);
      line-height: 1.2;
    }

    h1 {
      font-size: clamp(2.4rem, 6vw, 3.8rem);
      font-weight: 800;
      font-family: 'Playfair Display', serif;
      letter-spacing: -0.01em;
    }

    h2 {
      font-size: clamp(1.8rem, 4vw, 2.4rem);
      font-weight: 700;
    }

    h3 {
      font-size: 1.25rem;
      font-weight: 600;
    }

    /* ========== BUTTONS ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 0.6rem;
      padding: 0.9rem 2rem;
      border-radius: var(--radius-btn);
      font-weight: 600;
      font-size: 0.95rem;
      letter-spacing: 0.3px;
      transition: all 0.2s ease;
      cursor: pointer;
      border: 1.5px solid transparent;
      text-decoration: none;
      background: transparent;
      font-family: inherit;
      white-space: nowrap;
    }

    .btn-primary {
      background: var(--primary);
      color: #ffffff;
      border-color: var(--primary);
      box-shadow: 0 6px 14px rgba(27, 27, 47, 0.12);
    }

    .btn-primary:hover {
      background: var(--primary-light);
      border-color: var(--primary-light);
      box-shadow: 0 10px 20px rgba(27, 27, 47, 0.18);
      transform: translateY(-2px);
    }

    .btn-accent {
      background: var(--accent);
      color: #ffffff;
      border-color: var(--accent);
      box-shadow: 0 6px 14px rgba(217, 108, 76, 0.25);
    }

    .btn-accent:hover {
      background: var(--accent-hover);
      border-color: var(--accent-hover);
      box-shadow: 0 10px 20px rgba(217, 108, 76, 0.3);
      transform: translateY(-2px);
    }

    .btn-outline {
      border: 1.5px solid var(--border-light);
      color: var(--text-dark);
      background: #ffffff;
    }

    .btn-outline:hover {
      border-color: var(--primary);
      background: var(--primary-soft);
      transform: translateY(-2px);
    }

    .btn-ghost {
      color: var(--text-dark);
      font-weight: 600;
      padding: 0.6rem 1rem;
    }

    .btn-ghost:hover {
      background: var(--bg-subtle);
      border-radius: 40px;
    }

    /* ========== NAVIGATION ========== */
    .navbar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0.8rem 1.2rem 0.8rem 1.5rem;
      background: var(--bg-card);
      border-radius: 80px;
      box-shadow: var(--shadow-sm);
      margin-bottom: 2.5rem;
      border: 1px solid rgba(255,255,255,0.6);
      backdrop-filter: blur(4px);
      flex-wrap: wrap;
      gap: 1rem;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 0.6rem;
      font-weight: 800;
      font-size: 1.6rem;
      letter-spacing: -0.03em;
      color: var(--primary);
    }

    .logo i {
      color: var(--accent);
      font-size: 1.8rem;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 0.2rem;
      list-style: none;
      flex-wrap: wrap;
    }

    .nav-links a {
      text-decoration: none;
      color: var(--text-regular);
      font-weight: 500;
      font-size: 0.95rem;
      padding: 0.6rem 1.1rem;
      border-radius: 40px;
      transition: all 0.15s;
    }

    .nav-links a:hover {
      background: var(--bg-subtle);
      color: var(--primary);
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.3rem;
      padding: 0.6rem;
      border-radius: 50%;
      color: var(--text-regular);
      cursor: pointer;
      transition: all 0.15s;
      position: relative;
      display: flex;
      align-items: center;
      justify-content: center;
      width: 46px;
      height: 46px;
    }

    .icon-btn:hover {
      background: var(--bg-subtle);
      color: var(--primary);
    }

    .cart-badge {
      position: absolute;
      top: 0px;
      right: 0px;
      background: var(--accent);
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid var(--bg-card);
    }

    /* ========== HERO SECTION ========== */
    .hero {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 3rem;
      align-items: center;
      margin-bottom: 3.5rem;
      background: var(--bg-card);
      padding: 3rem 2.5rem;
      border-radius: var(--radius-card);
      box-shadow: var(--shadow-md);
      border: 1px solid rgba(255,255,255,0.8);
    }

    .hero-badge {
      display: inline-block;
      background: var(--accent-soft);
      color: var(--accent-hover);
      font-size: 0.8rem;
      font-weight: 700;
      letter-spacing: 0.5px;
      text-transform: uppercase;
      padding: 0.4rem 1rem;
      border-radius: 40px;
      margin-bottom: 1.2rem;
    }

    .hero h1 {
      margin-bottom: 1.2rem;
      color: var(--primary);
    }

    .hero p {
      font-size: 1.1rem;
      color: var(--text-muted);
      max-width: 500px;
      margin-bottom: 2rem;
      line-height: 1.6;
    }

    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 1rem;
      align-items: center;
    }

    .hero-visual {
      display: flex;
      justify-content: center;
      align-items: center;
      position: relative;
    }

    .hero-visual img {
      max-width: 100%;
      height: auto;
      border-radius: 28px;
      box-shadow: 0 24px 48px rgba(0,0,0,0.08);
      object-fit: cover;
      aspect-ratio: 1 / 1;
      width: 100%;
      background: var(--bg-subtle);
    }

    /* ========== STATS ROW ========== */
    .stats {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      gap: 2rem;
      background: var(--bg-card);
      padding: 2rem 2rem;
      border-radius: var(--radius-card);
      margin-bottom: 3.5rem;
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(255,255,255,0.8);
    }

    .stat-item {
      text-align: center;
    }

    .stat-number {
      font-size: 2rem;
      font-weight: 800;
      color: var(--primary);
      letter-spacing: -0.02em;
    }

    .stat-label {
      font-size: 0.9rem;
      color: var(--text-muted);
      font-weight: 500;
      margin-top: 0.2rem;
    }

    /* ========== FEATURED PRODUCTS ========== */
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 1.8rem;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .section-header h2 {
      font-size: 1.9rem;
      font-weight: 700;
    }

    .section-header a {
      color: var(--accent);
      font-weight: 600;
      text-decoration: none;
      display: inline-flex;
      align-items: center;
      gap: 0.4rem;
      transition: gap 0.2s;
    }

    .section-header a:hover {
      gap: 0.7rem;
      color: var(--accent-hover);
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
      gap: 1.8rem;
      margin-bottom: 3rem;
    }

    .product-card {
      background: var(--bg-card);
      border-radius: 24px;
      padding: 1.5rem 1.2rem 1.5rem;
      box-shadow: var(--shadow-sm);
      transition: all 0.25s ease;
      border: 1px solid rgba(255,255,255,0.8);
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-md);
      border-color: var(--accent-soft);
    }

    .product-image {
      width: 100%;
      aspect-ratio: 1 / 1;
      background: var(--bg-subtle);
      border-radius: 18px;
      margin-bottom: 1.2rem;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2.8rem;
      color: var(--text-muted);
      overflow: hidden;
      padding: 0.5rem;
    }

    .product-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: 16px;
    }

    .product-card h3 {
      font-size: 1.1rem;
      font-weight: 600;
      margin-bottom: 0.4rem;
      color: var(--text-dark);
    }

    .product-category {
      font-size: 0.8rem;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.5px;
      font-weight: 600;
      margin-bottom: 0.6rem;
    }

    .product-price {
      font-size: 1.35rem;
      font-weight: 700;
      color: var(--primary);
      margin-bottom: 1rem;
    }

    .product-price s {
      font-size: 0.9rem;
      color: var(--text-muted);
      font-weight: 400;
      margin-left: 0.4rem;
    }

    .product-card .btn {
      width: 100%;
      padding: 0.8rem;
      font-size: 0.9rem;
      margin-top: auto;
    }

    /* ========== CTA BANNER ========== */
    .cta-banner {
      background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
      color: white;
      padding: 3rem 2.5rem;
      border-radius: var(--radius-card);
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 2rem;
      margin-top: 2rem;
      box-shadow: 0 20px 36px rgba(27, 27, 47, 0.18);
    }

    .cta-banner h2 {
      color: white;
      font-size: 1.9rem;
      max-width: 600px;
    }

    .cta-banner p {
      color: rgba(255,255,255,0.8);
      margin-top: 0.5rem;
      font-size: 1rem;
    }

    .cta-banner .btn-accent {
      box-shadow: 0 8px 18px rgba(0,0,0,0.2);
    }

    .cta-banner .btn-accent:hover {
      background: #e07a5f;
      border-color: #e07a5f;
    }

    /* ========== FOOTER ========== */
    .footer {
      margin-top: 3rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 1.5rem;
      padding-top: 1.5rem;
      border-top: 1px solid var(--border-light);
      color: var(--text-muted);
      font-size: 0.9rem;
    }

    .footer-links {
      display: flex;
      gap: 2rem;
      flex-wrap: wrap;
    }

    .footer-links a {
      color: var(--text-muted);
      text-decoration: none;
      transition: color 0.15s;
    }

    .footer-links a:hover {
      color: var(--primary);
    }

    .footer-social {
      display: flex;
      gap: 1rem;
    }

    .footer-social a {
      color: var(--text-muted);
      font-size: 1.1rem;
      transition: color 0.15s;
    }

    .footer-social a:hover {
      color: var(--accent);
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 900px) {
      .hero {
        grid-template-columns: 1fr;
        text-align: center;
        padding: 2.5rem 1.8rem;
      }
      .hero p {
        margin-left: auto;
        margin-right: auto;
      }
      .hero-actions {
        justify-content: center;
      }
      .navbar {
        border-radius: 60px;
        padding: 0.7rem 1.2rem;
      }
      .nav-links {
        display: none; /* clean mobile – would add burger but simplified */
      }
    }

    @media (max-width: 600px) {
      body {
        padding: 1rem 0.8rem 2.5rem;
      }
      .hero {
        padding: 1.8rem 1.2rem;
        border-radius: 24px;
      }
      .hero h1 {
        font-size: 2.1rem;
      }
      .stats {
        padding: 1.5rem 1rem;
      }
      .stat-number {
        font-size: 1.6rem;
      }
      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 1rem;
      }
      .cta-banner {
        padding: 2rem 1.5rem;
        flex-direction: column;
        text-align: center;
      }
      .cta-banner h2 {
        font-size: 1.6rem;
      }
      .footer {
        flex-direction: column;
        text-align: center;
      }
    }

    @media (max-width: 420px) {
      .product-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>
<body>
  <div class="app-container">

    <!-- NAVIGATION -->
    <nav class="navbar">
      <a href="#" class="logo" style="text-decoration:none;">
        <i class="fa-solid fa-cube"></i> Nexus<span style="color:var(--accent);">Shop</span>
      </a>
      <ul class="nav-links">
        <li><a href="#">Home</a></li>
        <li><a href="#">Shop</a></li>
        <li><a href="#">Collections</a></li>
        <li><a href="#">Journal</a></li>
      </ul>
      <div class="nav-actions">
        <button class="icon-btn" aria-label="Search"><i class="fa-regular fa-magnifying-glass"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
        <button class="icon-btn" aria-label="Cart">
          <i class="fa-regular fa-bag-shopping"></i>
          <span class="cart-badge">3</span>
        </button>
      </div>
    </nav>

    <!-- HERO SECTION -->
    <section class="hero">
      <div class="hero-content">
        <span class="hero-badge"><i class="fa-regular fa-sparkles" style="margin-right:6px;"></i> New season · 2025</span>
        <h1>Elevate your everyday.</h1>
        <p>Curated essentials blending timeless design with modern utility. Discover pieces that feel as good as they look.</p>
        <div class="hero-actions">
          <a href="#" class="btn btn-primary"><i class="fa-regular fa-bag-shopping"></i> Shop collection</a>
          <a href="#" class="btn btn-outline"><i class="fa-regular fa-circle-play"></i> Watch story</a>
        </div>
      </div>
      <div class="hero-visual">
        <img src="https://images.unsplash.com/photo-1523170335258-f5ed11844a49?q=80&w=880&auto=format&fit=crop" alt="Minimal product composition">
      </div>
    </section>

    <!-- STATS -->
    <div class="stats">
      <div class="stat-item">
        <div class="stat-number">12k+</div>
        <div class="stat-label">Happy customers</div>
      </div>
      <div class="stat-item">
        <div class="stat-number">4.9★</div>
        <div class="stat-label">Average rating</div>
      </div>
      <div class="stat-item">
        <div class="stat-number">120+</div>
        <div class="stat-label">Premium products</div>
      </div>
      <div class="stat-item">
        <div class="stat-number">24/7</div>
        <div class="stat-label">Customer care</div>
      </div>
    </div>

    <!-- FEATURED PRODUCTS -->
    <div class="section-header">
      <h2>Featured pieces</h2>
      <a href="#">View all <i class="fa-solid fa-arrow-right"></i></a>
    </div>

    <div class="product-grid">
      <!-- Product 1 -->
      <div class="product-card">
        <div class="product-image">
          <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=870&auto=format&fit=crop" alt="Sneakers">
        </div>
        <span class="product-category">Footwear</span>
        <h3>AeroStride Sneaker</h3>
        <div class="product-price">$129 <s>$159</s></div>
        <button class="btn btn-primary"><i class="fa-regular fa-cart-plus"></i> Add to cart</button>
      </div>

      <!-- Product 2 -->
      <div class="product-card">
        <div class="product-image">
          <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=869&auto=format&fit=crop" alt="Watch">
        </div>
        <span class="product-category">Accessories</span>
        <h3>Minimal Chrono</h3>
        <div class="product-price">$189 <s>$220</s></div>
        <button class="btn btn-primary"><i class="fa-regular fa-cart-plus"></i> Add to cart</button>
      </div>

      <!-- Product 3 -->
      <div class="product-card">
        <div class="product-image">
          <img src="https://images.unsplash.com/photo-1584917865442-de89df76afd3?q=80&w=870&auto=format&fit=crop" alt="Bag">
        </div>
        <span class="product-category">Bags</span>
        <h3>Canvas Everyday Tote</h3>
        <div class="product-price">$79 <s>$95</s></div>
        <button class="btn btn-primary"><i class="fa-regular fa-cart-plus"></i> Add to cart</button>
      </div>

      <!-- Product 4 -->
      <div class="product-card">
        <div class="product-image">
          <img src="https://images.unsplash.com/photo-1572635196237-14b3f281503f?q=80&w=880&auto=format&fit=crop" alt="Sunglasses">
        </div>
        <span class="product-category">Eyewear</span>
        <h3>Horizon Sunglasses</h3>
        <div class="product-price">$99 <s>$120</s></div>
        <button class="btn btn-primary"><i class="fa-regular fa-cart-plus"></i> Add to cart</button>
      </div>
    </div>

    <!-- CTA BANNER -->
    <div class="cta-banner">
      <div>
        <h2>Get 15% off your first order</h2>
        <p>Join the newsletter for early access, styling tips, and exclusive offers.</p>
      </div>
      <a href="#" class="btn btn-accent"><i class="fa-regular fa-envelope"></i> Subscribe now</a>
    </div>

    <!-- FOOTER -->
    <footer class="footer">
      <div class="footer-links">
        <a href="#">About</a>
        <a href="#">Shipping</a>
        <a href="#">Returns</a>
        <a href="#">Privacy</a>
      </div>
      <div class="footer-social">
        <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
        <a href="#" aria-label="Pinterest"><i class="fa-brands fa-pinterest"></i></a>
        <a href="#" aria-label="TikTok"><i class="fa-brands fa-tiktok"></i></a>
      </div>
      <div>&copy; 2025 NexusShop. All rights reserved.</div>
    </footer>

  </div>
</body>
</html>
