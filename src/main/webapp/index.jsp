<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop · modern e‑commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400..700&family=Playfair+Display:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" />

    <style>
        /* ----- root ----- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        :root {
            --bg: #f6f5f2;
            --card: #ffffff;
            --ink: #1e1e2a;
            --ink-light: #3b3b4f;
            --muted: #7a7a8c;
            --muted-light: #b0b0c0;
            --accent: #d96c4a;
            --accent-light: #f0d4c8;
            --accent-dark: #b84e30;
            --surface: #ecebe7;
            --radius: 20px;
            --radius-sm: 12px;
            --shadow: 0 6px 28px rgba(0, 0, 0, 0.04);
            --shadow-hover: 0 18px 48px rgba(0, 0, 0, 0.08);
            --transition: 0.2s ease;
            --container: 1280px;
        }
        body {
            font-family: 'Inter', system-ui, sans-serif;
            background: var(--bg);
            color: var(--ink);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            font: inherit;
            border: none;
            background: none;
            cursor: pointer;
            color: inherit;
        }
        input {
            font: inherit;
        }

        .container {
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ----- buttons ----- */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.95rem;
            transition: var(--transition);
            border: 2px solid transparent;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }
        .btn-primary:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(217, 108, 74, 0.3);
        }
        .btn-outline {
            background: transparent;
            border-color: rgba(30, 30, 42, 0.2);
            color: var(--ink);
        }
        .btn-outline:hover {
            background: var(--ink);
            border-color: var(--ink);
            color: #fff;
            transform: translateY(-2px);
        }
        .btn-ghost {
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.25);
        }
        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.2);
            border-color: rgba(255, 255, 255, 0.4);
            transform: translateY(-2px);
        }
        .btn-sm {
            padding: 8px 18px;
            font-size: 0.8rem;
        }

        /* ----- header ----- */
        header {
            position: sticky;
            top: 0;
            z-index: 120;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.03);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            padding: 10px 0;
            min-height: 68px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 800;
            font-size: 1.4rem;
            letter-spacing: -0.4px;
            color: var(--ink);
            flex-shrink: 0;
        }
        .brand i {
            font-size: 1.6rem;
            color: var(--accent);
        }
        .brand .accent {
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.9rem;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--surface);
            color: var(--ink);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .icon-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 1.15rem;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }
        .icon-btn:hover {
            background: var(--surface);
            color: var(--ink);
        }

        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: #fff;
            font-size: 0.7rem;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
            transition: 0.15s;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 60px;
            padding: 0 16px 0 18px;
            border: 2px solid transparent;
            transition: var(--transition);
            min-width: 200px;
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(217, 108, 74, 0.08);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 0.9rem;
            color: var(--ink);
        }
        .search-wrap input::placeholder {
            color: var(--muted-light);
        }
        .search-wrap button {
            padding: 6px 0 6px 10px;
            color: var(--muted);
            transition: var(--transition);
        }
        .search-wrap button:hover {
            color: var(--accent);
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: var(--surface);
            font-size: 1.2rem;
            transition: var(--transition);
        }
        .mobile-toggle:hover {
            background: var(--accent-light);
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(0, 0, 0, 0.04);
            padding: 12px 0 20px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--ink);
            transition: var(--transition);
        }
        #mobileMenu ul li a:hover {
            background: var(--surface);
        }
        #mobileMenu ul li a i {
            width: 22px;
            color: var(--muted);
        }

        /* ----- hero ----- */
        .hero {
            position: relative;
            min-height: 420px;
            padding: 56px 0;
            border-radius: var(--radius);
            overflow: hidden;
            margin: 16px 24px 0;
            background: linear-gradient(145deg, #1e1e2a 0%, #2d2d44 100%);
            display: flex;
            align-items: center;
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.3;
            z-index: 0;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-block;
            background: rgba(217, 108, 74, 0.2);
            color: var(--accent);
            padding: 4px 18px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.8rem;
            letter-spacing: 0.3px;
            margin-bottom: 14px;
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 3.2rem;
            font-weight: 700;
            color: #fff;
            line-height: 1.1;
            max-width: 600px;
            margin-bottom: 14px;
        }
        .hero p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 1.1rem;
            max-width: 480px;
            margin-bottom: 26px;
            line-height: 1.6;
        }
        .hero .actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ----- sections ----- */
        .section {
            padding: 48px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 28px;
            flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-size: 1.8rem;
            font-weight: 700;
            letter-spacing: -0.3px;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 2px;
            font-size: 0.95rem;
        }
        .view-all {
            font-weight: 600;
            color: var(--accent);
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 0.9rem;
            transition: var(--transition);
            white-space: nowrap;
        }
        .view-all:hover {
            gap: 12px;
            color: var(--accent-dark);
        }

        /* ----- categories ----- */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 22px 12px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 2px solid transparent;
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .cat-card .icon-wrap {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background: var(--accent-light);
            display: grid;
            place-items: center;
            margin: 0 auto 12px;
            font-size: 1.5rem;
            color: var(--accent);
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: var(--accent);
            color: #fff;
        }
        .cat-card h4 {
            font-size: 0.95rem;
            font-weight: 600;
        }
        .cat-card .count {
            font-size: 0.8rem;
            color: var(--muted);
            margin-top: 4px;
        }

        /* ----- products ----- */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .product-card {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 2px solid transparent;
            display: flex;
            flex-direction: column;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .product-card .img-wrap {
            position: relative;
            background: var(--surface);
            aspect-ratio: 1/1;
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.3s;
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.04);
        }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: #fff;
            padding: 4px 14px;
            border-radius: 60px;
            font-size: 0.7rem;
            font-weight: 700;
            letter-spacing: 0.3px;
        }
        .product-card .badge.sale {
            background: #eab952;
            color: var(--ink);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.85);
            display: grid;
            place-items: center;
            font-size: 1rem;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(4px);
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: var(--accent);
            transform: scale(1.1);
        }
        .product-card .body {
            padding: 16px 18px 10px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        .product-card .body .category-tag {
            font-size: 0.7rem;
            color: var(--muted-light);
            text-transform: uppercase;
            letter-spacing: 0.4px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 0.95rem;
            font-weight: 600;
            line-height: 1.3;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 4px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 1.1rem;
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 0.85rem;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 0.85rem;
            color: #f5a623;
        }
        .product-card .body .rating span {
            color: var(--muted);
            font-weight: 400;
        }
        .product-card .footer {
            padding: 0 18px 18px;
            display: flex;
            gap: 10px;
        }
        .product-card .footer .add-btn {
            flex: 1;
            padding: 10px;
            border-radius: var(--radius-sm);
            background: var(--ink);
            color: #fff;
            font-weight: 600;
            font-size: 0.85rem;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent);
            transform: scale(1.02);
        }
        .product-card .footer .add-btn.added {
            background: #2a9d8f;
        }

        /* ----- deal ----- */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
        }
        .deal-wrap .deal-img {
            flex: 0 0 48%;
            background: var(--surface);
            min-height: 280px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 36px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-block;
            background: #eab952;
            color: var(--ink);
            padding: 4px 16px;
            border-radius: 60px;
            font-size: 0.7rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.4px;
            align-self: flex-start;
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 4px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 16px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 2rem;
            font-weight: 800;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 1.2rem;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 0.9rem;
            color: var(--muted);
            margin: 4px 0 14px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--accent);
        }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 12px 0 18px;
        }
        .timer-box {
            background: var(--ink);
            color: #fff;
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            min-width: 68px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 1.6rem;
            font-weight: 700;
            line-height: 1.2;
        }
        .timer-box .label {
            font-size: 0.7rem;
            opacity: 0.7;
            text-transform: uppercase;
            letter-spacing: 0.4px;
        }

        /* ----- testimonials ----- */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 16px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-light);
            border-radius: 20px;
        }
        .testimonial-card {
            flex: 0 0 320px;
            background: var(--card);
            border-radius: var(--radius);
            padding: 22px 26px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            transition: var(--transition);
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
        }
        .testimonial-card .stars {
            color: #f5a623;
            font-size: 0.9rem;
            letter-spacing: 2px;
            margin-bottom: 8px;
        }
        .testimonial-card blockquote {
            font-size: 0.95rem;
            line-height: 1.6;
            color: var(--ink);
            margin-bottom: 12px;
            font-style: italic;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--surface);
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 0.9rem;
        }
        .testimonial-card .author .role {
            font-size: 0.8rem;
            color: var(--muted);
        }

        /* ----- newsletter ----- */
        .newsletter-wrap {
            background: linear-gradient(145deg, var(--ink) 0%, #2d2d44 100%);
            border-radius: var(--radius);
            padding: 44px 50px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-size: 1.6rem;
            font-weight: 700;
            margin-bottom: 2px;
        }
        .newsletter-wrap .text p {
            opacity: 0.75;
            font-size: 0.95rem;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 480px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 200px;
            padding: 14px 20px;
            border-radius: 60px;
            border: 0;
            font-size: 0.95rem;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            transition: var(--transition);
            outline: 2px solid transparent;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }
        .newsletter-wrap form input:focus {
            outline-color: var(--accent);
            background: rgba(255, 255, 255, 0.18);
        }
        .newsletter-wrap form .btn {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            padding: 14px 32px;
        }
        .newsletter-wrap form .btn:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
        }
        #newsletterMsg {
            margin-top: 10px;
            font-size: 0.9rem;
            opacity: 0.9;
            width: 100%;
        }

        /* ----- footer ----- */
        footer {
            margin-top: 12px;
            padding: 40px 0 24px;
            border-top: 1px solid rgba(0, 0, 0, 0.04);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 28px;
        }
        .footer-grid .brand-col .brand {
            font-size: 1.2rem;
            margin-bottom: 6px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 0.9rem;
            max-width: 280px;
            line-height: 1.6;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
            margin-top: 12px;
        }
        .footer-grid .brand-col .socials a {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 0.9rem;
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent);
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 0.9rem;
            margin-bottom: 10px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 0.9rem;
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent);
        }
        .footer-bottom {
            text-align: center;
            padding-top: 18px;
            border-top: 1px solid rgba(0, 0, 0, 0.04);
            color: var(--muted-light);
            font-size: 0.8rem;
        }

        /* ----- responsive ----- */
        @media (max-width: 1200px) {
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 28px;
            }
        }
        @media (max-width: 992px) {
            .hero h1 {
                font-size: 2.6rem;
            }
            .hero {
                min-height: 340px;
                margin: 12px 16px 0;
                padding: 36px 0;
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 220px;
            }
            .deal-wrap .deal-content {
                padding: 28px 28px;
            }
            .newsletter-wrap {
                padding: 32px 28px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter-wrap form {
                max-width: 100%;
            }
            .search-wrap {
                min-width: 140px;
            }
        }
        @media (max-width: 768px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }
            .hero h1 {
                font-size: 2rem;
            }
            .hero p {
                font-size: 0.95rem;
            }
            .section-header h2 {
                font-size: 1.4rem;
            }
            .deal-wrap .deal-content h3 {
                font-size: 1.4rem;
            }
            .deal-wrap .deal-content .price-big {
                font-size: 1.6rem;
            }
            .timer-box {
                min-width: 56px;
                padding: 6px 12px;
            }
            .timer-box .num {
                font-size: 1.2rem;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            .brand {
                font-size: 1.2rem;
            }
            .search-wrap {
                min-width: 100px;
                padding: 0 10px 0 14px;
            }
            .search-wrap input {
                font-size: 0.8rem;
                padding: 8px 0;
            }
            .header-actions .icon-btn {
                width: 36px;
                height: 36px;
                font-size: 1rem;
            }
            .cart-count {
                width: 18px;
                height: 18px;
                font-size: 0.6rem;
            }
            .testimonial-card {
                flex: 0 0 260px;
            }
            .section {
                padding: 32px 0;
            }
        }
        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .categories-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .hero {
                margin: 8px 8px 0;
                min-height: 260px;
                padding: 24px 0;
                border-radius: var(--radius-sm);
            }
            .hero h1 {
                font-size: 1.6rem;
            }
            .container {
                padding: 0 14px;
            }
            .deal-wrap .deal-content {
                padding: 18px 16px;
            }
            .deal-wrap .deal-img {
                flex: 0 0 160px;
            }
            .newsletter-wrap {
                padding: 20px 16px;
            }
            .newsletter-wrap .text h3 {
                font-size: 1.2rem;
            }
            .product-card .body {
                padding: 10px 10px 6px;
            }
            .product-card .body h5 {
                font-size: 0.8rem;
            }
            .product-card .body .price {
                font-size: 0.95rem;
            }
            .product-card .footer {
                padding: 0 10px 10px;
            }
            .product-card .footer .add-btn {
                font-size: 0.7rem;
                padding: 6px;
            }
            .timer-box {
                min-width: 44px;
                padding: 4px 8px;
            }
            .timer-box .num {
                font-size: 1rem;
            }
            .timer-box .label {
                font-size: 0.6rem;
            }
            .cat-card {
                padding: 14px 8px;
            }
            .cat-card .icon-wrap {
                width: 40px;
                height: 40px;
                font-size: 1.1rem;
            }
            .cat-card h4 {
                font-size: 0.8rem;
            }
        }
    </style>
</head>
<body>

<!-- ===== HEADER ===== -->
<header>
    <div class="container header-inner">
        <div style="display:flex;align-items:center;gap:10px;">
            <button class="mobile-toggle" id="mobileToggle" aria-label="menu">
                <i class="fas fa-bars"></i>
            </button>
            <a class="brand" href="#">
                <i class="fas fa-store-alt"></i>
                <span>Nexus<span class="accent">Shop</span></span>
            </a>
        </div>

        <nav class="main-nav" id="mainNav">
            <ul>
                <li><a href="#" class="active"><i class="fas fa-house"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
            </ul>
        </nav>

        <div style="display:flex;align-items:center;gap:8px;">
            <div class="search-wrap" role="search">
                <input type="search" id="searchInput" placeholder="Search…" aria-label="Search" />
                <button id="searchBtn" aria-label="submit"><i class="fas fa-search"></i></button>
            </div>

            <div class="header-actions">
                <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
                <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
                <div class="cart-wrap">
                    <button class="icon-btn" id="cartBtn" title="Cart">
                        <i class="fas fa-shopping-bag"></i>
                    </button>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
            </div>
        </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu">
        <div class="container">
            <ul>
                <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
            </ul>
        </div>
    </div>
</header>

<!-- ===== MAIN ===== -->
<main>

    <!-- HERO -->
    <section class="hero" aria-label="hero">
        <div class="container">
            <div class="badge"><i class="
