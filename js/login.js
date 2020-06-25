const viewPass = document.querySelector('#verContra');

viewPass.addEventListener('click',passwordChange);

function passwordChange(){
    const inputPass = document.querySelector('#pass');
    const icono = document.querySelector('#icono');
    if(inputPass.type == 'password'){
        inputPass.type = 'text';
        icono.className='fas fa-eye';
    }
    else if(inputPass.type == 'text'){
        inputPass.type='password';
        icono.className='fas fa-eye-slash';
    }
}