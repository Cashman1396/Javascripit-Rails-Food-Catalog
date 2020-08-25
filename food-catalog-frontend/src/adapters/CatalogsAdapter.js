class CatalogsAdapter{
    constructor(){
        this.baseURL = "http://localhost:3000/catalogs"
    }

    getCatalogs() {
        return fetch(this.baseURL).then(response => response.json()).then(json => json.data)
      }


}