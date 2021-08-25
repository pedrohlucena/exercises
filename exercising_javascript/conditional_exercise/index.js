let departureDateEntry = prompt('Digite a data de partida da nave (DD/MM/AAAA)')

let departureDate = moment(departureDateEntry, 'DD/MM/YYYY')
let today = moment()

let dateDiff = today - departureDate

let chosenOption = prompt(
    'Calculei o tempo que se passou desde a partida da nave! Escolha a visualização que você quer ver a seguir:' +
    '\n' + '\n1- Segundos' + '\n2- Minutos' + '\n3- Horas' + '\n4 - Dias' + '\n'
)

if (chosenOption == '1') {
    let secondsOfDeparture = Math.round(dateDiff / 1000)
    alert('Segundos desde a partida: ' + secondsOfDeparture)
} else if (chosenOption == '2') {
    let minutesOfDeparture = Math.round(dateDiff / 1000 / 60)
    alert('Minutos desde a partida: ' + minutesOfDeparture)
} else if (chosenOption == '3') {
    let hoursOfDeparture = Math.round(dateDiff / 1000 / 3600)
    alert('Horas desde a partida: ' + hoursOfDeparture)
} else if (chosenOption == '4') {
    let daysOfDeparture = Math.round(dateDiff / 1000 / 3600 / 24)
    alert('Dias desde a partida: ' + daysOfDeparture)
} else {
    alert('Opção inválida!')
}