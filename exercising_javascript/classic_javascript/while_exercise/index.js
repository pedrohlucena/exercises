let chosenOption = ''
let warpCOunt = 0

let spaceship = prompt('Digite o nome da nave')

chosenOption = prompt('Deseja entrar em uma dobra espacial\n' +
                '\n1- Sim' + '\n2- Não\n')

while (chosenOption == '1') {
    warpCOunt += 1
    chosenOption = prompt('Deseja entrar na próxima dobra espacial\n' +
                    '\n1- Sim' + '\n2- Não\n')
}

alert(
    'Nome da nave: ' + spaceship +
    '\nDobras espaciais percorridas: ' + warpCOunt
)