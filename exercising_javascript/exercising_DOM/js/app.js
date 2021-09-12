class App {
    createProperty() {
        event.preventDefault()

        let kind = document.querySelector("select[name = 'kind']").value 
        let area = document.querySelector("input[name = 'area']").value 
        let isRented = document.querySelector("input[name = 'isRented']").checked 

        let newProperty = new Property(kind,area,isRented)
        
        this.addToList(newProperty)
    }

    addToList(property) {
        let propertyList = document.querySelector('ul#property-list')

        let propertyToAdd = document.createElement('li')

        let mark = this.createMark(property.isRented)
        let propertyInfo = 'Tipo: ' + property.kind + ' (Área: ' + property.area + 'm²)'
        let removeButton = this.createRemoveButton()

        propertyToAdd.appendChild(mark)
        propertyToAdd.innerHTML += propertyInfo
        propertyToAdd.appendChild(removeButton)

        propertyList.appendChild(propertyToAdd)
    }

    createMark(isRented) {
        let mark = document.createElement('span')

        if (isRented) {
            mark.innerText = 'ALUGADO'
            mark.style.color = 'white'
            mark.style.backgroundColor = 'red'
        } else {
            mark.innerText = 'NÃO ALUGADO'
            mark.style.color = 'white'
            mark.style.backgroundColor = 'green'
        }

        return mark
    }

    createRemoveButton() {
        let removeButton = document.createElement('button')
        removeButton.innerText = 'Remover'
        removeButton.type = 'button'
        removeButton.setAttribute('onclick', 'app.deleteProperty()')

        return removeButton
    }

    deleteProperty() {
        let propertyToDelete = event.target.parentNode
        document.querySelector('ul#property-list').removeChild(propertyToDelete)
    }

    cleanForm() {
        document.querySelector("input[name = 'area']").value = ''
        document.querySelector("input[name = 'isRented']").checked = false
    }
}