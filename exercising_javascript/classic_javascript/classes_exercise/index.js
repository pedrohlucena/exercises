class Spaceship {
    constructor(name, crewQuantity) {
        this.name = name
        this.crewQuantity = crewQuantity
        this.isHitched = false
        this.entranceDoorsOpen = false
    }

    hitch() {
        this.isHitched = true
        this.entranceDoorsOpen = true
    }
}

function showMenu() {
    let chosenOption
    do {
        chosenOption = prompt('Qual decisão você deseja tomar?\n' +
                              '\n1- Engatar a nave' +
                              '\n2- Mostrar lista de naves' +
                              '\n3- Sair do programa\n' +
                              '\n(Digite o número correspondente a opção desejada)')
    } while(chosenOption != '1' && chosenOption != '2' && chosenOption != '3')
    return chosenOption
}

let chosenOption
let hitchedSpaceships = []

function createSpaceship() {
    let spaceshipName = prompt('Informe o nome da espaçonave')
    let crewQuantity = prompt('Agora informe a quantidade de tripulantes')
    let spaceship = new Spaceship(spaceshipName, crewQuantity)
    return spaceship
}

function printSpaceships(spaceships) {
    let spaceshipList = ''
    spaceships.forEach((spaceship, index) => {
        spaceshipList += (index + 1) + '- ' + spaceship.name + ' (' + spaceship.crewQuantity + ' tripulantes)\n'
    })
    alert(spaceshipList)
}


do {
    chosenOption = showMenu()
    switch(chosenOption) {
        case '1':
            let spaceshipToAdd = createSpaceship()
            spaceshipToAdd.hitch()
            hitchedSpaceships.push(spaceshipToAdd)
            break
        case '2':
            printSpaceships(hitchedSpaceships)
            break
        case '3':
            alert('Encerrando programa..')
            break
    }
} while (chosenOption != '3')