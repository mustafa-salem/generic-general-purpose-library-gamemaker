class Event  {
    
    self[$ "#type"] = ""

    static get_type = function(parameters = {}) {
        return self[$ "#type"]
    }

}