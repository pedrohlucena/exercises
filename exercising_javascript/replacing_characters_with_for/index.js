let spaceshipName = prompt('Qual o nome da sua espaçonave?')

let charToReplace = prompt('Qual caractere você deseja substituir no nome da sua nave?')

let replacementChar = prompt('Você deseja substituir o caractere "' + charToReplace +
                        '" por qual outro caractere?')

let newSpaceshipName = ''

for (pos = 0; pos < spaceshipName.length; pos++) {
    if (spaceshipName[pos] == charToReplace) {
        newSpaceshipName += replacementChar
    } else {
        newSpaceshipName += spaceshipName[pos]
    }
}

alert(
    'Nome antigo da espaçonave: ' + spaceshipName +
    '\nNovo nome da espaçonave: ' + newSpaceshipName
)