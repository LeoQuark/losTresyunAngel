const showCardOn = document.querySelector('#showCardOn')
const showCardOff = document.querySelector('#showCardOff')
showCardOn.addEventListener('click', function (e) {
    e.preventDefault()
    BorrarElementos();
    const realizarVenta = document.querySelector('.realizarVenta')
    setTimeout(() => {
        realizarVenta.style.display = 'block'
    }, 100);
})

showCardOff.addEventListener('click', function (e) {
    e.preventDefault()
    BorrarElementos();
    const verVenta = document.querySelector('.verVentas')
    setTimeout(() => {
        verVenta.style.display = 'block'
    }, 100);
})

function BorrarElementos() {
    showCardOn.style.display = 'none';
    showCardOff.style.display = 'none';
}