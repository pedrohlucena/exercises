let spaceship = {
    velocity: 0,
    speedUp: function(acceleration) {
        this.velocity += acceleration
    }
}

function registerSpaceship() {
    spaceship.name = prompt('Informe o nome da espaçonave')
    spaceship.type = prompt('Agora informe o tipo dessa espaçonave')
    spaceship.maxVelocity = Number(prompt('Você deseja configurar a velocidade máxima da ' +
                                          'nave pra quanto? (km/s)'))
}

function showMenu() {
    let chosenOption
    do {
        do {
            chosenOption = prompt('Que decisão você deseja tomar?\n' +
                                '\n1- Acelerar a nave' + 
                                '\n2- Desacelerar a nave\n' +
                                '\n(Digite o número correspondente a opção desejada)')
        } while (chosenOption != '1' && chosenOption != '2')

        switch (chosenOption) {
            case '1':
                acelerate()
                break
            case '2':
                stop()
                break
            default:
                alert('Opção inválida! Tente novamente.')
        }
    } while (chosenOption == '1')
}

function acelerate() {
    let acceleration = Number(prompt('Você deseja acelerar a nave em quanto? (km/s)'))
    spaceship.speedUp(acceleration)
    if (spaceship.velocity > spaceship.maxVelocity) {
        alert(
            'VELOCIDADE MÁXIMA ULTRAPASSADA!' +
            '\nVelocidade atual: ' + spaceship.velocity + ' km/s' +
            '\nVelocidade MÁXIMA: ' + spaceship.maxVelocity + ' km/s'
        )
    }
}

function stop() {
    alert(
        'Nome da espaçonave: ' + spaceship.name +
        '\nTipo da espaçonave: ' + spaceship.type + 
        '\nVelocidade ATUAL da nave: ' + spaceship.velocity + ' km/s' +
        '\nVelocidade MÁXIMA da nave: ' + spaceship.maxVelocity + ' km/s'
    )
    spaceship.velocity = 0
}

registerSpaceship()
showMenu()