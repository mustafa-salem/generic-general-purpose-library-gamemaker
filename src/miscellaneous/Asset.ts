/// This script function serves as a proxy for the static method function:
/// AssetGeneric.get_id
function get_id_asset_generic(arguments) {
    return ASSET_GENERIC.get_id(arguments)
}

/// This script function serves as a proxy for the static method function:
function get_name_asset_generic(arguments) {
    return ASSET_GENERIC.name
}

/// This script function serves as a proxy for the static method function:
/// AssetGeneric.get_type
function get_type_asset_generic(arguments) {
    return ASSET_GENERIC.get_type(arguments)
}

/// GameMakerAsset

ASSET_GENERIC

class AssetGeneric {

    static get_id = function(arguments) {
        _id
        return _id
    }

    static get_asset_id = function(arguments) {
        _id
        return _id
    }

    #name: string;

    public get name() {
        return this.#name;
    }

    static get_asset_name = function(arguments) {
        var _name
        return _name
    }

    static get_type = function(arguments) {
        var _type
        return _type
    }

    static get_asset_type = function(arguments) {
        var _type
        return _type
    }

}

/// GameMakerAssetInstance
class AssetInstanceGeneric {

}