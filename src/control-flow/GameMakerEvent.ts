class Event  {
    
    this["#type"] = ""

    static get_type = function(parameters = {}) {
        return this["#type"]
    }

}