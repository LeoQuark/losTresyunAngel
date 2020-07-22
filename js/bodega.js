const app = new Vue({
    el: '#appBodega',
    data: {
        //agregar al inventario
        titulo1: 'Agrega Insumos',
        //inventario
        titulo2: 'Inventario',
        filas: ['ID', 'Nombre', 'Fecha de Caducidad', 'Stock'],
        productos: [
            { id: '001', nombre: 'Pack Vienesas 20u', caducidad: '07 / 03 / 2021', stock: 2 },
            { id: '002', nombre: 'Pan de completo 10u', caducidad: '22 / 03 / 2021', stock: 3 },
            { id: '003', nombre: 'Ketchup 1kg', caducidad: '13 / 03 / 2021', stock: 5 },
            { id: '004', nombre: 'Palta 1kg', caducidad: '20 / 01 / 2021', stock: 3 }
        ],
        nuevoProducto: [
            { id: '', nombre: '', caducidad: '', stock: '' }
        ]
    },
    methods: {
        agregarProducto() {
            console.log('si')
            this.productos.push({
                id: this.nuevoProducto.id,
                nombre: this.nuevoProducto.nombre,
                caducidad: this.nuevoProducto.caducidad,
                stock: this.nuevoProducto.stock
            })
            this.nuevoProducto.id = ''
            this.nuevoProducto.nombre = ''
            this.nuevoProducto.caducidad = ''
            this.nuevoProducto.stock = ''
            console.log('2')
        }
    }
})
