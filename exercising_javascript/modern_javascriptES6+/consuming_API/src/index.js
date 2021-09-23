import 'core-js'
import 'regenerator-runtime'
import SentryObject from './sentry_objects'
import {getSentryObjects} from './sentry_service'

async function loadSentryObjects() {
    let sentrys = []
    let sentryObjectsJSON = await getSentryObjects()

    sentryObjectsJSON.forEach(sentry => {
        const newSentry = new SentryObject(sentry["sentryId"], sentry["fullname"], sentry["year_range_min"], sentry["year_range_max"])
        sentrys.push(newSentry)
    });

    renderSentryObjects(sentrys)
}

function renderSentryObjects(sentrys) {
    const olElement = document.getElementById('sentry-objects')

    sentrys.forEach(sentry => {
        let newLi = document.createElement('li')
        let liContent = `(ID: ${sentry.id}) ${sentry.name}: risco de colisão entre ${sentry.yearMin} e ${sentry.yearMax}`
        newLi.innerText = liContent

        olElement.appendChild(newLi)
    })
}

loadSentryObjects()