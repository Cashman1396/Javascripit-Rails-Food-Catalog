class App {
    start() {
        const catalog = new Catalog()
        catalog.renderAllItems()
        catalog.addListenerToMenu()
    }
}