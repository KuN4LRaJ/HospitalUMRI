let config = [];
config.push({

    type: 'doughnut',
    data: {
        labels: [
            'New',
            'Revisit',
            'Casualty'
        ],
        datasets: [{
            label: 'Value',
            data: [300, 50, 2],
            backgroundColor: [
                'rgb(140, 200, 100)',
                'rgb(54, 162, 235)',
                'rgb(255, 99, 132)'
            ],
            hoverOffset: 4
        }]
    }

});

config.push({

    type: 'doughnut',
    data: {
        labels: [
            'New',
            'Revisit',
            'Casualty'
        ],
        datasets: [{
            label: 'Value',
            data: [2270658, 174330, 64520],
            backgroundColor: [
                'rgb(140, 200, 100)',
                'rgb(54, 162, 235)',
                'rgb(255, 99, 132)'
            ],
            hoverOffset: 4
        }]
    }

});

config.push({

    type: 'doughnut',
    data: {
        labels: [
            'Booked',
            'Available',
        ],
        datasets: [{
            label: 'Value',
            data: [302, 18],
            backgroundColor: [
                'rgb(140, 200, 100)',
                'rgb(54, 162, 235)',
                'rgb(255, 99, 132)'
            ],
            hoverOffset: 4
        }]
    }

});

config.push({

    type: 'doughnut',
    data: {
        labels: [
            'Cancer',
            'Covid',
            'Miscellaneous',
            'Casualty'
        ],
        datasets: [{
            label: 'Value',
            data: [270658, 374330, 64520, 14530],
            backgroundColor: [
                'rgb(250, 220, 50)',
                'rgb(54, 162, 235)',
                'rgb(200, 150, 235)',
                'rgb(255, 99, 132)'
            ],
            hoverOffset: 4
        }]
    }

});


const MONTHS = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
];

function months(config) {
    var cfg = config || {};
    var count = cfg.count || 12;
    var section = cfg.section;
    var values = [];
    var i, value;

    for (i = 0; i < count; ++i) {
        value = MONTHS[Math.ceil(i) % 12];
        values.push(value.substring(0, section));
    }

    return values;
}

config.push({
    type: 'bar',
    data: {
        labels: months({ count: 7 }),
        datasets: [{
            label: 'Monthly Patients',
            data: [6524, 5859, 8520, 8102, 5665, 5655, 4280],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    },
})

config.push({
    type: 'line',
    data: {
        labels: months({ count: 7 }),
        datasets: [{
            label: 'Monthly sale in Rs from the Medical store',
            data: [200524, 325859, 220520, 105102, 330665, 326655, 405280],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    },
})





let charts = [];

const cnv = document.querySelectorAll('canvas');

cnv.forEach((element, index) => {
    charts.push(new Chart(element, config[index]));
})
