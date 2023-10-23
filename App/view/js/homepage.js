// inicio do menu mobile
const mobileMenu = document.getElementById('mobile-menu');
function toggleMenu(event) {
    if (event.type === 'touchstart') event.preventDefault()
    const nav = document.getElementById('nav');
    nav.classList.toggle('active');
    const active = nav.classList.contains('active')
    event.currentTarget.setAttribute('aria-expanded', active);

    if (active) {
        event.currentTarget.setAttribute('aria-label', 'Fechar menu');
    } else {
        event.currentTarget.setAttribute('aria-label', 'Abrir menu')
    }


    const hi = document.getElementById('hi');
    hi.classList.toggle('active');

    const hs = document.getElementById('hs');
    hs.classList.toggle('active');
}
mobileMenu.addEventListener('click', toggleMenu);
mobileMenu.addEventListener('touchstart', toggleMenu);



const searchIcon = document.querySelector('.search-icon');
const searchInput = document.querySelector('.search-input');

searchIcon.addEventListener('click', () => {
    searchInput.classList.toggle('active');
    if (searchInput.classList.contains('active')) {
        searchInput.focus();
    }
});
// fim do mobile


let carrosselPrincipal = document.querySelector(".carrossel-container-box");
let carrosselBanner = new Glide(carrosselPrincipal, {
type: "carousel",
autoplay: 4500,
startAt: 0,
perView: 1,
});
carrosselBanner.mount();
// FIM JS CARROSSEL PRINCIPAL


// INÍCIO CARROSSEL DE PROD 1
let carrosselProd = document.querySelector(".prod-container-box");
let carrosselProdFirst = new Glide(carrosselProd, {
  type: "carousel",
  perView: 4,
  // autoplay: 1500,
  breakpoints: {
    800: {
      perView: 3,
    },
    600: {
      perView: 2,
    },
    500: {
      perView: 1,
    },
  },
});

carrosselProdFirst.mount();
