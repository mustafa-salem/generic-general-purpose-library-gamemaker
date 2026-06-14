enum BLEND_FACTOR_IDS {
    ZERO                      = bm_zero,
    ONE                       = bm_one,
    SOURCE_COLOUR             = bm_src_colour,
    INVERSE_SOURCE_COLOUR     = bm_inv_src_colour
    SOURCE_ALPHA              = bm_src_alpha
    INVERSE_DESTINATION_ALPHA =
}

/// red   : 0
/// green : 0
/// blue  : 0
/// alpha : 0
const ZERO_BLENDFACTOR = BLEND_FACTOR_IDS.ZERO

/// red   : 1
/// green : 1
/// blue  : 1
/// alpha : 1
const ONE_BLENDFACTOR = BLEND_FACTOR_IDS.ONE

/// red   : source.red
/// green : source.green
/// blue  : source.blue
/// alpha : source.alpha
const SOURCE_COLOUR_BLENDFACTOR = BLEND_FACTOR_IDS.SOURCE_COLOUR

/// red   : 1 - source.red
/// green : 1 - source.green
/// blue  : 1 - source.blue
/// alpha : 1 - source.alpha
const INVERSE_SOURCE_COLOUR_BLENDFACTOR = BLEND_FACTOR_IDS.INVERSE_SOURCE_COLOUR

/// red   : source.alpha
/// green : source.alpha
/// blue  : source.alpha
/// alpha : source.alpha
const SOURCE_ALPHA_BLENDFACTOR = BLEND_FACTOR_IDS.SOURCE_ALPHA

/// red   : 1 - source.alpha
/// green : 1 - source.alpha
/// blue  : 1 - source.alpha
/// alpha : 1 - source.alpha
const INVERSE_SOURCE_ALPHA_BLENDFACTOR = bm_inv_src_alpha;

/// red   : destination.red
/// green : destination.green
/// blue  : destination.blue
/// alpha : destination.alpha
const DESTINATION_COLOUR_BLENDFACTOR = bm_dest_colour;

/// red   : 1 - destination.red
/// green : 1 - destination.green
/// blue  : 1 - destination.blue
/// alpha : 1 - destination.alpha
const INVERSE_DESTINATION_COLOUR_BLENDFACTOR = bm_inv_dest_colour;

/// red   : destination.alpha
/// green : destination.alpha
/// blue  : destination.alpha
/// alpha : destination.alpha
const DESTINATION_ALPHA_BLENDFACTOR = bm_dest_alpha;

/// red   : 1 - destination.alpha
/// green : 1 - destination.alpha
/// blue  : 1 - destination.alpha
/// alpha : 1 - destination.alpha
const INVERSE_DESTINATION_ALPHA_BLENDFACTOR = bm_inv_dest_alpha;

/// red   : Math.min(soure.alpha, 1 - destination.alpha)
/// green : Math.min(soure.alpha, 1 - destination.alpha)
/// blue  : Math.min(soure.alpha, 1 - destination.alpha)
/// alpha : 1
const SOURCE_ALPHA_SATURATION_BLENDFACTOR = bm_src_alpha_sat;

class BlendFactor {

}