class Food {
    constructor(name, cost, description, image_url, id, catalog_id, catalog_name){
        this.name = name
        this.cost = cost
        this.image_url = image_url
        this.id = id
        this.catalog_id = catalog_id
        this.catalog_name = catalog_name
        this.foodsAdapter = new FoodsAdapter()
    }
}
    createFoodCard() {
        const container = document.querySelector(".container")
        const foodCard = document.createElement("div")
        foodCard.className = "food-card"
        foodCard.setAttribute("data-id", `${this.id}`)
        foodCard.setAttribute("data-catalog-id", `${this.catalog_id}`)
        const foodImage = document.createElement("div")
        foodImage.className = "food-image"
        foodImage.style.backgroundImage = `url("${this.image_url}")`
    }







