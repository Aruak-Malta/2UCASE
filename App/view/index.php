<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

    <!-- or -->

    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="css/navbar.css" />
    <link rel="stylesheet" href="css/style.css" />

    <!-- Required Core Stylesheet -->
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.core.min.css">

    <!-- Optional Theme Stylesheet -->
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.theme.min.css">


    <title>Homepage</title>
</head>

<body>
    <header>
        <div class="logo"><a href="index.php"><img src="img/2UCASE LOGO.png" alt="" width="150px"
            height="70px"></a></div>
<nav id="nav">
    <div class="hed">
        <button aria-label="Abrir menu" id="mobile-menu" aria-haspopup="true" aria-controls="navegacao"
            aria-expanded="false">
            <span id="hamburger"></span>
        </button>
        <div class="logo2"><a href="index.php"><img src="img/2UCASE LOGO.png" alt="LOGO" width="150px"
                    height="70px"></a></div>
        <!-- <a href="#" class="logo"></i>2UCASE</a>     -->
    </div>
    <div class="input-container">
        <input type="text" class="search-input" placeholder="">
        <label for="search">
            <i class="ri-search-line search-icon"></i>
        </label>
    </div>

    <ul class="navegacao" role="menu">
        <li class="dropdown">
            <a id="menu-navgation" href="#">Novidades</a>
        </li>
        <li class="dropdown">
            <a id="menu-navgation" href="#">Promoções</a>
        </li>
        <li class="dropdown">
            <a id="menu-navgation" href="#">Capinhas</a>
            <div class="dropdown-content capinhas">
                <!-- Links do dropdown "Capinhas" -->
                <a href="#">Capinhas para Samsung </a>
                <a href="#">Capinhas para iPhone </a>
                <a href="#">Acessórios para Celulares </a>
            </div>
        </li>
        <li class="dropdown">
            <a id="menu-navgation" href="#">Acessórios</a>
            <div class="dropdown-content">
                <!-- Links do dropdown "Acessórios" -->
                <a href="#">Tipo X</a>
                <a href="#">Tipo Y</a>
            </div>
        </li>
        <li class="dropdown"><a id="menu-navgation" href="#">Sobre</a></li>
    </ul><!--navegação-->
</nav>


<div id="hi" class="header-icons ">
    <div class="box">
        <input type="text" placeholder="Search...">
        
            <i class='bx bx-search bx-lg' style="font-size: 28px"></i>    
    
    </div>
    <i class="bi bi-person-circle"><svg xmlns="http://www.w3.org/2000/svg" fill="currentColor"
            class="bi bi-person-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
            <path fill-rule="evenodd"
                d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
        </svg></i>
</div>

<div class="infoLogDiv">
    <a href="" class="infoLog">Minha Conta</a><br>
    <a href="" class="infoLog">Entre ou Cadastre-se</a>
</div>

<div id="hs" class="header-icons">
    <i class='bx bx-heart bx-lg'></i>
    <i class='bx bx-cart bx-lg'></i>
</div><!--header-icons-->

    </header>

    <main>
        <!-- INÍCIO CARROSSEL PRINCIPAL -->
        <div class="glide carrossel-container-box">
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides">
                    <li class="glide__slide"><img src="img/img1.jpg" alt="ds2" srcset=""></li>
                    <li class="glide__slide"><img src="img/kit s23.png" alt="ds1" srcset=""></li>
                    <li class="glide__slide"><img src="img/banner.png" alt="ds2" srcset=""></li>
                </ul>

                <div class="glide__arrows" data-glide-el="controls">
                    <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
                    <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
                </div>
                <div class="glide__bullets" data-glide-el="controls[nav]">
                    <button class="glide__bullet" data-glide-dir="=0"></button>
                    <button class="glide__bullet" data-glide-dir="=1"></button>
                    <button class="glide__bullet" data-glide-dir="=2"></button>
                </div>
            </div>
        </div>
        <!-- FIM CARROSEL PRINCIPAL -->

        <!-- INÍCIO BANNER NOVAS PROMOÇÕES -->
        <div class="banner">
            <span id="espaco-logo-banner">
                <img class="logo" src="img/2UCASE LOGO.png" alt="logo" width="150px" height="70px">
            </span>

            <span id="espaco-titulo-banner">
                <h1 id="banner-titulo">NOVAS PROMOÇÕES TODA SEMANA</h1>
            </span>
        </div>
        <!-- FIM BANNER NOVAS PROMOÇÕES -->

        <!-- INÍCIO PRIMEIRO CARROSSEL DE PRODUTO -->
        <article class="homepage-prod-carrosel"> 
            <section class="glide prod-container-box">
                <div class="glide__arrows" data-glide-el="controls">
                    <button class="glide__arrow glide__arrow--left" data-glide-dir="<"><i
                            class='bx bx-chevron-left bx-md'></i></button>
                </div>

                <div class="glide__track" data-glide-el="track">
                    <ul class="glide__slides">
                        <li class="glide__slide">
                            <div class="card glide__slide">
                                <img class="img-prod" src="img/capinha smiles derretidos.png" alt="">
                                <div class="cont-prod">
                                    <h1 class="nome-prod">Capinha Smiles Mickey </h1>
                                    <h2 class="preco-antigo">R$ 5,60</h2>
                                    <div id="conteudoCard">
                                        <span class="precoAtual">R$ 5,50</span>
                                        <span class="desconto">50%</span>
                                    </div>
                                    <span class="centerButton">
                                        <button class="button-comprar"><h4 class="button-texto">COMPRAR</h4></button>
                                    </span>
                                </div>
                            </div>
                        </li>


                    </ul>
                </div>
                <div class="glide__arrows" data-glide-el="controls">
                    <button class="glide__arrow glide__arrow--right" data-glide-dir=">"><i
                            class='bx bx-chevron-right bx-md'></i></button>
                </div>
            </section>
        </article>

                <div class="prop">
    
                    <h4>Uma nova forma de demonstrar sua personalidade</h4>
                  
                    <hr>
                    <p>Na 2UCASE você tem algo especial e único que poucos têm.<br> Aqui você é livre e autêntico. Desde o mais simples, passando pelo clássico até o mais <br>elaborado acessório para o seu celular.</p>
                
                    <div class="imgcap">
                       <img src="img/cap.png" alt="capinhas">
                       <div class="alerta"> 
                        <div class="titl">DISNEY + 2UCASE</div>
                        <p class="anun">Uma parceria da 2UCASE com a Disney traz as mais coloridas e animadas capinhas do mercado, toda a magia e encanto nas suas mãos.</p>
                            
                        <button type="submit" class="confi">CONFIRA</button>
                        </div>
                    </div>
                    
                </div>
                <div class="catg">
                    <ul>
                      <li class="category1">
                        <div class="text-wrapper">Heróis</div>
                      </li>
                      <li class="category2">
                        <div class="text-wrapper">Animações</div>
                      </li>
                      <li class="category3">
                        <div class="text-wrapper">Estampas</div>
                      </li>
                      <li class="category4">
                        <div class="text-wrapper">Flork</div>
                      </li>
                      <li class="category5">
                        <div class="text-wrapper">Times</div>
                      </li>
                    </ul>
                  </div>
        <!-- FIM PRIMEIRO CARROSSEL DE PRODUTO -->
    </main>




    <script>
        function slider(anything) {
            document.querySelector('.one').src = anything;
        };

        let menu = document.querySelector('#menu-icon');
        let navbar = document.querySelector('.navbar');
        menu.onclick = () => {
            menu.classList.toggle('bx-x');
            navbar.classList.toggle('open');

        }
    </script>

    <script src="node_modules/@glidejs/glide/dist/glide.min.js"></script>
    <script src="js/homepage.js"></script>


</body>

</html>