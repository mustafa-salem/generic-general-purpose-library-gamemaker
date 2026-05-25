export class Colour {

    public static Black: Colour = Colour.fromHEX("#000000");
    public static White: Colour = Colour.fromHEX("#FFFFFF");

    public static Red: Colour = Colour.fromHEX("#FF0000");
    public static Green: Colour = Colour.fromHEX("#00FF00");
    public static Blue: Colour = Colour.fromHEX("#0000FF");
    
    public static Cyan: Colour = Colour.fromHEX("#00FFFF");
    public static Magenta: Colour = Colour.fromHEX("#FF00FF");
    public static Yellow: Colour = Colour.fromHEX("#FFFF00");

    public static Grey: Colour = Colour.fromHEX("#808080");
    public static Silver: Colour = Colour.fromHEX("#C0C0C0");
    
    public static Purple: Colour = Colour.fromHEX("#800080");
    public static Navy: Colour = Colour.fromHEX("#000080");
    public static Maroon: Colour = Colour.fromHEX("#800000");

    public static GMDarkGrey: Colour = Colour.fromHEX("#404040");
    public static GMGreen: Colour = Colour.fromHEX("#008000");
    public static GMOlive: Colour = Colour.fromHEX("#808000");
    public static GMOrange: Colour = Colour.fromHEX("#FFA040");
    public static GMTeal: Colour = Colour.fromHEX("#008080");

    public static fromHEX(hexcode: string): Colour {
        return new Colour();
    }

    public static merge(colourA: Colour, colourB: Colour, amount: number): Colour {
        return new Colour();
    }

}