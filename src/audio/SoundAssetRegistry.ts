/**
 * 
 */
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
