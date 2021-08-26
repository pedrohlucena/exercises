let spaceship = prompt('Qual o nome da espaçonave?')

let invertedSpaceship = ''

for (let pos = spaceship.length - 1; pos >= 0; pos --) {
    if (spaceship[pos] == 'e') { // "e" is a prohibited letter
        break
    }
    invertedSpaceship += spaceship[pos]
}

alert(
    'Nome normal: ' + spaceship +
    '\nNome invertido e sem a letra "e": ' + invertedSpaceship
)