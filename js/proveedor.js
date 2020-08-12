const agregarProveedor = document.querySelector('#agregarProveedor');
agregarProveedor.addEventListener('click', function (e) {
    e.preventDefault();
    const formularioProveedor = document.querySelector('.showProveedor'),
        addProveedor = document.querySelector('#btnAgregar');
    formularioProveedor.style.display = 'block';
    window.scrollTo(0, 1000)
});

const eliminarProveedor = document.querySelector('#eliminarProveedor');
eliminarProveedor.addEventListener('click', function (e) {
    e.preventDefault();
    const formularioEliminar = document.querySelector('.showEliminar'),
        btnEliminar = document.querySelector('#btnEliminar');
    formularioEliminar.style.display = 'block';
    window.scrollTo(0, 1000);
});

