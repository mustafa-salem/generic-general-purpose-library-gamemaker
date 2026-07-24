import { Vector3 } from "../data-types/Vector3";
import { Component } from "./Component";

/**
 * A component that applies simple physics to the transform of the game object.
 */
export class RigidBody extends Component {

    // friction
    public gravity: number;
    public gravity_direction: number;
    public speed: number;
    public direction: number;

    /**
     * 
     */
    public get linearVelocity(): Vector3 {
        return new Vector3(0, 0, 0);
    }

    public set linearVelocity(linearVelocity: Vector3) {

    }

    /**
     * 
     */
    public set linearAcceleration(linearVelocity: Vector3) {
        // gravity, gravity_direction
    }

    /**
     * 
     */
    public get linearDamping(): number {
        return 0;
    }

    public set linearDamping(friction: number) {

    }
    
    /**
     * 
     */
    public applyForce() {

    }

}