//SWIPER
const swiper = new Swiper(".slide-content", {
    slidesPerView: 3,
    spaceBetween: 5,
    loop: true,
    centerSlide: "true",
    face: "true",
    grabCursor: "true",
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        0: {
            slidesPerView: 1,
        },
        520: {
            slidesPerView: 1,
        },
        950: {
            slidesPerView: 1,
        }
    }
});

const swiper2 = new Swiper(".slide2", {
    slidesPerView: 3,
    loop: true,
    centerSlide: "true",
    face: "true",
    grabCursor: "true",
    autoplay: false,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        0: {
            slidesPerView: 1,
        },
        520: {
            slidesPerView: 2,
        },
        950: {
            slidesPerView: 3,
        },
        1450: {
            slidesPerView: 3,
        }
    }
});

const swiper3 = new Swiper(".slide3", {
    slidesPerView: 3,
    loop: true,
    centerSlide: "true",
    face: "true",
    grabCursor: "true",
    autoplay: false,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        0: {
            slidesPerView: 1,
        },
        520: {
            slidesPerView: 2,
        },
        950: {
            slidesPerView: 3,
        },
        1450: {
            slidesPerView: 3,
        }
    }
});

const swiper4 = new Swiper(".slide4", {
    slidesPerView: 3,
    loop: true,
    centerSlide: "true",
    face: "true",
    grabCursor: "true",
    autoplay: false,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        0: {
            slidesPerView: 1,
        },
        520: {
            slidesPerView: 2,
        },
        950: {
            slidesPerView: 3,
        },
        1450: {
            slidesPerView: 3,
        }
    }
});