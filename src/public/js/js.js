//SWIPER
const swiper = new Swiper(".slide-content", {
    slidesPerView: 3,
    spaceBetween: 5,
    loop: true,
    centerSlide: "true",
    face: "true",
    grabCursor: "true",
    autoplay: {
        delay: 3000, // tiempo en milisegundos
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints:{
        0:{
            slidesPerView:1,
        },
        520:{
            slidesPerView: 1,
        },
        950:{
            slidesPerView: 1,
        }
    }
})

const swiper2 = new Swiper(".slide-content2", {
    slidesPerView: 3,
    spaceBetween: 5,
    loop: true,
    centerSlide: "true",
    face: "true",
    grabCursor: "true",
    autoplay: {
        delay: 4000, // tiempo en milisegundos
    },
    breakpoints:{
        0:{
            slidesPerView: 1,
        },
        520:{
            slidesPerView: 1,
        },
        950:{
            slidesPerView: 1,
        },
        1450: {
            slidesPerView: 1,
        }
    }
})