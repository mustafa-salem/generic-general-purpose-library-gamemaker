import { MonoBehaviour } from "./MonoBehaviour";

/**
 * A component that applies simple physics to the transform of the game object.
 */
export class RigidBody extends MonoBehaviour {

    public gravity: number;
    public gravity_direction: number;
    public friction: number;
    public speed: number;
    public direction: number;

}