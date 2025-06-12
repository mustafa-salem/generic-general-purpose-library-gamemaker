function Event () constructor {
    
    self[$ "#type"] = ""

    static get_type = function(parameters = {}) {
        return self[$ "#type"]
    }

}