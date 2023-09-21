// JavaScript can be used to add or remove classes to control the sticky behavior
window.addEventListener('scroll', () => {
    const header = document.querySelector('.sticky-header');
    const scrollY = window.scrollY;

    if (scrollY > 100) {
        header.classList.add('sticky');
    } else {
        header.classList.remove('sticky');
    }
});
