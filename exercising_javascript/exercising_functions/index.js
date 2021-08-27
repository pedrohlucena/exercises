let spaceshipName = prompt('Qual o nome da sua espaçonave piloto?')

velocity = 0

let chosenOption

function showMenu() {
    let option 
    while (option != '1' && option != '2' && option != '3' && option != '4') {
        option = prompt('Qual ação você deseja tomar?\n' +
                        '\n1- Acelerar 5 km/s' +
                        '\n2- Desacelerar 5 km/s' +
                        '\n3- Imprimir dados de bordo' +
                        '\n4- Sair do programa\n' +
                        '\n(Digite o número corresponded a opção desejada)')
        return option
    }
}

let newVelocity

function speedUp(velocity) {
    newVelocity = velocity + 5
    return newVelocity
}

function slowDown(velocity) {
    newVelocity = velocity - 5
    if (newVelocity < 0) {
        newVelocity = 0
    }
    return newVelocity
}

function printSpaceshipDataBoard() {
    alert(
        'Nome da espaçonave: ' + spaceshipName +
        '\nVelocidade atual da nave: ' + velocity + ' km/s'
    )
}

do {
    chosenOption = showMenu()
    switch (chosenOption) {
        case '1':
            velocity = speedUp(velocity)
            break
        case '2':
            velocity = slowDown(velocity)
            break
        case '3':
            printSpaceshipDataBoard()
            break
        default:
            alert('Opção inválida! Tente novamente.')
    }
} while (chosenOption != '4')