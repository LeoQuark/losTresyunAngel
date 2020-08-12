var configChart = {
    type: 'pie',
    data: {
        datasets: [{
            // porcentaje 
            data: [20, 40, 10, 30],
            // fondos correspondientes a los porcentajes
            backgroundColor: [
                '#42a5f5',
                '#66bb6a',
                '#ffca28',
                '#9575cd'
            ],
            borderAlign: ['inner'],
            hoverBorderWidth: [3, 3, 3, 3],
            hoverBorderColor: ['#0077c2', '#338a3e', '#c79a00', '#65499c']
        }],
        // titulos correspondientes a los porcentajes
        labels: [
            'Completos',
            'Papas Fritas',
            'Churrascos',
            'Fajitas'
        ]
    },
    options: {
        responsive: true
    }
}

window.onload = () => {
    const myChart = document.querySelector('#myChart').getContext('2d');
    var graphicsChart = new Chart(myChart, configChart);
}
