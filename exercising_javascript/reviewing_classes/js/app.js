class App {
    constructor() {
        this.spaceship = null
    }

    start() { // chama aqui
        this.enrollSpaceship()
        let chosenOption
        do {
            chosenOption = this.showInitialMenu()
            this.redirectFeature(chosenOption)
        } while (chosenOption != '3')
        this.printAndExit()
    }

    printAndExit() {
        alert(
            'Nome da espaçonave: ' + this.spaceship.name +
            '\nTripulação de: ' + this.spaceship.crewQuantity + ' pessoas' +
            '\nVelocidade atual de: ' + this.spaceship.currentVelocity + ' km/s'
        )
    }

    enrollSpaceship() {
        let spaceshipName = prompt('Informe o nome da nave')
        let crewQuantity = prompt('Agora informe a quantidade de tripulantes')
        let spaceshipKind = this.askForSpaceshipKind()
        switch (spaceshipKind) {
            case '1':
                let weaponsQuantity = prompt('Qual a quantidade de armas da espaçonave?')
                this.spaceship = new BattleSpaceship (spaceshipName, crewQuantity, weaponsQuantity)
                break
            case '2':
                let seatsQuantity = prompt('Qual a quantidade de assentos da espaçonave?')
                this.spaceship = new TransportSpaceship(spaceshipName, crewQuantity, seatsQuantity)
                break
        }
    }

    askForSpaceshipKind() {
        let chosenOption
        while(!['1','2'].includes(chosenOption)) {
            chosenOption = prompt('Qual o tipo da espaçonave?\n\n' +
                                  '1- Espaçonave de Batalha\n' +
                                  '2- Espaçonave de transporte\n\n' +
                                  '(Digite o número correspondente a opção desejada)')
        }
        return chosenOption
    }

    showInitialMenu() {
        let chosenOption
        while (!['1', '2', '3'].includes(chosenOption)) {
            chosenOption = prompt('Que decisão você deseja tomar\n\n' + 
                                  '1- Acelerar a nave\n' +
                                  '2- Trocar a nave\n' +
                                  '3- Imprimir e sair\n\n' +
                                  '(Digite o número correspondente a opção desejada)')
        }
        return chosenOption
    }

    redirectFeature(chosenOption) {
        switch(chosenOption) {
            case '1':
                this.accelerateSpaceship()
                break
            case '2':
                this.enrollSpaceship()
                break
        }
    }

    accelerateSpaceship() {
        let acceleration = Number(prompt('Você deseja acelerar quantos km/s?'))
        this.spaceship.speedUp(acceleration)
    }
}