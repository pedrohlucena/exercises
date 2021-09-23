export async function getSentryObjects() {
    let response = await fetch("https://api.nasa.gov/neo/rest/v1/neo/sentry?api_key=DEMO_KEY")
    let result = await response.json()
    return result['sentry_objects']
}