export class Vector3 {

    /** new Vector3(0, 0, 0) */
    public static get Zero() {
        return new Vector3(0, 0, 0);
    }
    
    /**
     * Constructs a vector from polar coordinates.
     * @param radius 
     * @param angle 
     * @returns 
    */
    public static fromPolar(radius: number, angle: number): Vector3 {
       return new Vector3(0, 0, 0);
    }
    
    /**
     * Constructs a vector from spherical coordinates.
     * @param radialDistance 
     * @param polarAngle 
     * @param azimuthalAngle 
     * @returns 
    */
    public static fromSpherical(radialDistance: number, polarAngle: number, azimuthalAngle: number): Vector3 {
       return new Vector3(0, 0, 0);
    }
    
    public get x(): number {
        return this.#x;
    }
    
    public set x(x: number) {
        this.#x = x;
    }
    
    public get y(): number {
        return this.#y;
    }
    
    public set y(y: number) {
        this.#y = y;
    }
    
    public get z(): number {
        return this.#y;
    }
    
    public set z(y: number) {
        this.#y = y;
    }
    
    #x: number = 0;
    #y: number = 0;
    #z: number = 0;

    public constructor(x: number, y: number, z: number) {
        
        this.#x = x;
        this.#y = y;
        this.#z = z;
        
    }

}