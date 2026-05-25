/**
 *  Returns a random element from the array.
 */
export function choose<T>(array: T[]) {
    const index = Math.floor(Math.random() * array.length);
    return array[index];
}