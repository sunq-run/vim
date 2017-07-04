<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Material Design Lite</title>

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="images/touch/chrome-touch-icon-192x192.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">

    <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
    <!--
    <link rel="canonical" href="http://www.example.com/">
    -->

    <link href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <link rel="stylesheet" href="{{ get_url('static',path='material.min.css') }}">
    <link rel="stylesheet" href="{{ get_url('static',path='styles.css') }}">
    <style>
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 40px;
      z-index: 900;
    }
    </style>
  </head>
  <body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
      <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout__header-row">
          <h1>二郎チェッカー★のサンプル</h1>
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
          <a href="#overview" class="mdl-layout__tab is-active">二郎関連ツイート！</a>
          <a href="#features" class="mdl-layout__tab">現在の店舗一覧！</a>
          <a href="#features" class="mdl-layout__tab">みんなのおすすめ</a>
          <a href="#features" class="mdl-layout__tab">お問い合わせ</a>
          <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-shadow--4dp mdl-color--accent" id="add">
            <i class="material-icons">add</i>
          </button>
        </div>
      </header>
      <div class="mdl-layout__drawer">
        <span class="mdl-layout-title">Material Design Lite</span>
        <nav class="mdl-navigation">
          <a href="#overview" class="mdl-navigation__link">二郎関連ツイート！</a>
          <a href="#features" class="mdl-navigation__link">現在の店舗一覧！</a>
          <a href="#features" class="mdl-navigation__link">みんなのおすすめ</a>
          <a href="#features" class="mdl-navigation__link">お問い合わせ</a>
        </nav>
      </div>
      <main class="mdl-layout__content">
        <div class="mdl-layout__tab-panel is-active" id="overview">
	 {{ !zirou_tw }}
          <section class="section--footer mdl-color--white mdl-grid">
            <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
              <div class="section__circle-container__circle mdl-color--accent section__circle--big"></div>
            </div>
            <div class="section__text mdl-cell mdl-cell--4-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
              <h5>油マシマシのススメ</h5>
		豚の背脂。トッピングのひとつ。デフォルトでも入っているが、更に足したい場合に「アブラ」「アブラマシ」などとコールする。
            </div>
            <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
              <div class="section__circle-container__circle mdl-color--accent section__circle--big"></div>
            </div>
            <div class="section__text mdl-cell mdl-cell--4-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
              <h5>にんにく！！</h5>
		「ヤサイスクナメニンニクスクナメ」野菜の量を減らしてニンニクを少し投入
「ニンニクスクナメヤサイアブラカラメ」ニンニク投入、野菜と醤油を増量
「ヤサイマシマシアブラマシマシカラメニンニク」ヤサイ増量x2倍、背脂と醤油を追加投入し、ニンニクをトッピング
「ゼンブマシマシ」すごいことになる
            </div>
          </section>
        </div>
        <div class="mdl-layout__tab-panel" id="features">
          <section class="section--center mdl-grid mdl-grid--no-spacing">
            <div class="mdl-cell mdl-cell--12-col">
              <h4>二郎店舗一覧！</h4>
		<p>
			三田本店：1968年創業\n
目黒店：1995年7月開店\n
仙川店：1995年10月開店\n
歌舞伎町店：1997年8月開店\n
品川店：1997年11月開店\n
新宿小滝橋通り店：1999年2月開店\n
環七新代田店：2000年1月開店\n
八王子野猿街道店2：2000年8月開店\n
池袋東口店：2001年2月開店\n
新小金井街道店：2001年3月開店\n
亀戸店：2001年4月開店\n
京急川崎店：2001年4月開店\n
府中店：2001年5月開店\n
松戸駅前店：2002年5月開店\n
めじろ台法政大学前店：2002年5月開店\n
荻窪店：2002年10月開店\n
上野毛店：2002年11月開店\n
京成大久保店：2002年12月開店
環七一之江店：2003年11月開店
相模大野店：2003年12月開店
横浜関内店：2004年10月開店
神田神保町店：2004年11月開店
小岩店：2005年11月開店
ひばりヶ丘駅前店：2006年6月開店
桜台駅前店：2007年1月開店
栃木街道店：2007年11月開店
立川店：2008年4月開店
大宮店：2008年8月開店
千住大橋駅前店：2009年4月開店
茨城守谷店：2009年6月開店
湘南藤沢店：2010年3月開店
西台駅前店：2010年6月開店
中山駅前店：2010年12月開店
新橋店：2011年9月開店
仙台店：2011年10月開店
赤羽店：2012年1月開店
札幌店：2013年3月開店
会津若松駅前店：2014年9月開店
JR西口蒲田店：2014年11月開店
新潟店：2015年11月開店
川越店：2017年3月開店
京都店：2017年4月開店</p>
            </div>
          </section>
        </div>
        <footer class="mdl-mega-footer">
          <div class="mdl-mega-footer--middle-section">
            <div class="mdl-mega-footer--drop-down-section">
              <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
              <h1 class="mdl-mega-footer--heading">Features</h1>
              <ul class="mdl-mega-footer--link-list">
                <li><a href="#">About</a></li>
                <li><a href="#">Terms</a></li>
                <li><a href="#">Partners</a></li>
                <li><a href="#">Updates</a></li>
              </ul>
            </div>
            <div class="mdl-mega-footer--drop-down-section">
              <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
              <h1 class="mdl-mega-footer--heading">Details</h1>
              <ul class="mdl-mega-footer--link-list">
                <li><a href="#">Spec</a></li>
                <li><a href="#">Tools</a></li>
                <li><a href="#">Resources</a></li>
              </ul>
            </div>
            <div class="mdl-mega-footer--drop-down-section">
              <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
              <h1 class="mdl-mega-footer--heading">Technology</h1>
              <ul class="mdl-mega-footer--link-list">
                <li><a href="#">How it works</a></li>
                <li><a href="#">Patterns</a></li>
                <li><a href="#">Usage</a></li>
                <li><a href="#">Products</a></li>
                <li><a href="#">Contracts</a></li>
              </ul>
            </div>
            <div class="mdl-mega-footer--drop-down-section">
              <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
              <h1 class="mdl-mega-footer--heading">FAQ</h1>
              <ul class="mdl-mega-footer--link-list">
                <li><a href="#">Questions</a></li>
                <li><a href="#">Answers</a></li>
                <li><a href="#">Contact us</a></li>
              </ul>
            </div>
          </div>
        </footer>
      </main>
    </div>
    <script src="{{ get_url('static',path='material.min.js') }}"></script>
  </body>
</html>
