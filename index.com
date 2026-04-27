<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>Victory Radiance | Together We Win</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400&family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body { font-family: 'Inter', sans-serif; background: #0A0C12; color: #1E1B1A; scroll-behavior: smooth; }
    .hero { position: relative; min-height: 100vh; width: 100%; display: flex; align-items: center; justify-content: center; text-align: center; overflow: hidden; }
    .hero-bg { position: absolute; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; z-index: -2; filter: brightness(1.02) contrast(1.05); }
    .hero::after { content: ''; position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: radial-gradient(circle at 30% 20%, rgba(255,215,130,0.2) 0%, rgba(255,165,50,0.05) 60%, transparent 90%); pointer-events: none; z-index: -1; }
    .hero::before { content: ''; position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: linear-gradient(145deg, rgba(10,12,18,0.2) 0%, rgba(0,0,0,0.3) 100%); z-index: -1; pointer-events: none; }
    .hero-content { max-width: 1200px; padding: 2rem; z-index: 2; backdrop-filter: blur(2px); }
    .hero h1 { font-family: 'Cormorant Garamond', serif; font-size: clamp(3rem, 9vw, 6.8rem); font-weight: 600; letter-spacing: -0.02em; color: #FFF9F0; text-shadow: 0 8px 28px rgba(0,0,0,0.3); margin-bottom: 0.5rem; }
    .hero h1 span { border-bottom: 3px solid #E8BC7E; padding-bottom: 0.15em; }
    .hero .sun-ray-accent { margin-top: 1.5rem; font-size: 1rem; letter-spacing: 4px; color: #FFE6C7; text-transform: uppercase; }
    .scroll-indicator { position: absolute; bottom: 2rem; left: 50%; transform: translateX(-50%); color: #FFE6C7; font-size: 1.4rem; animation: float 2s infinite; cursor: pointer; background: rgba(0,0,0,0.2); width: 40px; height: 40px; border-radius: 50%; display: flex; align-items: center; justify-content: center; }
    @keyframes float { 0% { transform: translateX(-50%) translateY(0); opacity:0.6; } 50% { transform: translateX(-50%) translateY(12px); opacity:1; } 100% { transform: translateX(-50%) translateY(0); opacity:0.6; } }
    .book-section { background: linear-gradient(145deg, #FEF9F0 0%, #FFF7E8 100%); padding: 5rem 2rem 6rem; }
    .container { max-width: 1280px; margin: 0 auto; }
    .book-showcase { display: flex; flex-direction: column; align-items: center; text-align: center; }
    .book-cover-placeholder { width: 100%; max-width: 380px; margin-bottom: 2.8rem; transition: 0.3s; filter: drop-shadow(0 30px 30px rgba(0,0,0,0.15)); }
    .book-cover-placeholder:hover { transform: translateY(-8px); }
    .book-cover-img { width: 100%; border-radius: 18px; display: block; box-shadow: 0 20px 30px rgba(0,0,0,0.2); }
    .victory-message p { font-family: 'Cormorant Garamond', serif; font-size: 1.9rem; font-weight: 500; color: #2C2418; }
    .amazon-link { display: inline-flex; align-items: center; gap: 12px; background: #1E2A2F; padding: 1rem 2.8rem; border-radius: 60px; text-decoration: none; font-weight: 600; font-size: 1.2rem; color: #FFF7E8; border: 1px solid #E8BC7E; transition: 0.3s; margin: 1rem 0 0.8rem; }
    .amazon-link i { color: #E8BC7E; }
    .amazon-link:hover { background: #0F1A1E; transform: scale(1.02); }
    .callout-text { background: rgba(232,188,126,0.18); display: inline-block; padding: 0.5rem 1.8rem; border-radius: 100px; }
    .footer-note { background: #0F1117; color: #B5A889; text-align: center; padding: 2rem; border-top: 1px solid rgba(232,188,126,0.2); }
    @media (max-width: 760px) { .victory-message p { font-size: 1.5rem; } }
  </style>
</head>
<body>
  <section class="hero">
    <img class="hero-bg" src="hero-youth.jpg" alt="Three joyful youths in sun rays">
    <div class="hero-content">
      <h1><span>Together we will win</span></h1>
      <div class="sun-ray-accent"><i class="fas fa-sun"></i> freedom · unity · light <i class="fas fa-sun"></i></div>
    </div>
    <div class="scroll-indicator" onclick="document.querySelector('.book-section').scrollIntoView({behavior:'smooth'})"><i class="fas fa-chevron-down"></i></div>
  </section>
  <section class="book-section">
    <div class="container book-showcase">
      <div class="book-cover-placeholder">
        <img class="book-cover-img" src="book-cover.jpg" alt="Break Free Book Cover">
      </div>
      <div class="victory-message"><p>⚡ Order, Download, go to victory — for you & your family ⚡</p></div>
      <a href="https://a.co/d/0j98pcHn" class="amazon-link" target="_blank"><i class="fab fa-amazon"></i> ORDER & DOWNLOAD ON AMAZON <i class="fas fa-arrow-right"></i></a>
      <div class="callout-text"><i class="fas fa-heart"></i> Claim your personal & family victory today <i class="fas fa-hands-helping"></i></div>
      <div class="fine-print">* Instant access — Kindle & Paperback. Your breakthrough starts here.</div>
    </div>
  </section>
  <footer class="footer-note"><p><i class="fas fa-globe"></i> Social Impact Initiative — Together we rise, together we win. <br>© 2025 · Empowerment for every family</p></footer>
</body>
</html>
