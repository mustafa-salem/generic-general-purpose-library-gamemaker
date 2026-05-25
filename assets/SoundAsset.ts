import { SoundInstance } from "@gamemaker/assets/SoundInstance";

import SoundAssets from "./SoundAssets.json";

type SoundAssetKey = keyof typeof SoundAssets;

/**
 * Plays any sound asset using any combination of parameters.
 * `parameters.sound` (Sound Asset or Audio Queue ID, required)
 * `parameters.priority` (Real, optional), defaults to 0
 * `parameters.loop` (Boolean, optional), defaults to false
 * `parameters.gain` (Real, optional), defaults to 1.0
 * `parameters.pitch` (Real, optional), defaults to 1.0
 */
function gamemaker_sound_play(key: SoundAssetKey): SoundInstance {
    VinylPlay(sound, [loop], [gain = 1], [pitch = 1], [pan]);
    VinylPlayFadeIn(sound, [loop], [targetGain = 1], [rate = VINYL_DEFAULT_GAIN_RATE], [pitch = 1]);
    const instance = new SoundInstance();
    return instance;
}

export function gamemaker_sound(key: SoundAssetKey): SoundAsset {
    return;
}

export class SoundAsset {

    /**
     * 
     */
    public play({ loop = false, gain = 1, pitch = 1 } = { loop: false, gain: 1, pitch: 1 }): SoundInstance {
        return new SoundInstance();
    }

}

export class SoundAssetRegistry {

    /**
     * 
     */
    static #soundAssets: Record<SoundAssetKey, SoundAsset> = (() => {
        const object: Record<string, SoundAsset> = {};
        for (let key in SoundAssets) {
            const assetKey = key as keyof typeof SoundAsset;
            object[assetKey] = new SoundAsset();
        }
        return object;
    })();

    /**
     * 
     */
    public static lookup(key: SoundAssetKey): SoundAsset {
        return this.#soundAssets[key];
    }

}