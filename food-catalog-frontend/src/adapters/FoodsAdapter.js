class FoodsAdapter {
    constructor() {
      this.baseURL = "http://localhost:3000/foods"
    }
  
    getFoods() {
      return fetch(this.baseURL).then(response => response.json()).then(json => (json.data))
    }

    postItems(data) {
      return fetch(this.baseURL, {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
          body: JSON.stringify(data)
        })
        .then(resp => resp.json())
        .catch(err => alert(err))
    }
}