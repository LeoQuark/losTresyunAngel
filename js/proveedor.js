const agregarProveedor = document.querySelector('#agregarProveedor');
agregarProveedor.addEventListener('click',function(e){
    e.preventDefault();
    const formularioProveedor = document.querySelector('.showProveedor');
    formularioProveedor.style.display='block';
});

