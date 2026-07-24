import { Component } from "./Component";
import { Coroutine } from "./Coroutine";

/**
 * 
 */
export abstract class MonoBehaviour extends Component {

    protected "Create Event"?(): void;
    protected "Destroy Event"?(): void;
    protected "Clean Up Event"?(): void;
    protected "Game Start Event"?(): void;
    protected "Game End Event"?(): void;
    protected "Room Start Event"?(): void;
    protected "Room End Event"?(): void;
    protected "Begin Step Event"?(): void;
    protected "Step Event"?(): void;
    protected "End Step Event"?(): void;
    protected "Draw Event"?(): void;
    protected "Draw GUI Event"?(): void;
    protected "Collision Event"?(other: object): void;

    /*
    "user_event_0"
    "user_event_1"
    "alarm_0"
    "animation_end_event
    "outside_room_event"
    */

    /**
     * Starts a coroutine on this component.
     * @param coroutine The coroutine to start.
     */
    public startCoroutine(coroutine: Coroutine): void {
        
    }

}