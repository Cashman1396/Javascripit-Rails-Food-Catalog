class Catalog {
    constructor(name){
        this.name = name
        this.catalogsAdapter = new CatalogsAdapter()
        this.foodsAdapter = new FoodsAdapter()
        this.form = document.querySelector("#create-catalog-food-form")
        this.populateCatalogNameToForm()
    }

    addListenerToCatalog() {
        const catalogsNames = document.querySelectorAll(".catalog-name")
        catalogsNames.forEach(catalog => {
            catalog.addEventListner("click", () => {
                const container = document.querySelector(".container")
                container.style.display = "flex"
                switch(catalog.textContent) {
                    case "Entrees":
                        this.clearPage()
                        this.renderEntreesFoods()
                        break
                    case "Desserts":
                        this.clearPage()
                        this.renderDessertsFoods()
                        break
                    case "Drinks":
                        this.clearPage()
                        this.renderDrinksFoods()
                        break
                    default:
                        this.clearPage
                        this.renderAllFoods
                }
            })
        })
    }

    clearPage(){
        const clearFoods = document.querySelectorAll(".food-card")
        Array.from(clearFoods).forEach(food => {
            food.remove()
        })
        this.form.style.display = "none"
    }


}