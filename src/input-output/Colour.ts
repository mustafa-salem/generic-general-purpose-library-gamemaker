export class Colour {

    public static get Black(): Colour {
        return Colour.fromHEX("#000000");
    }
    
    public static get White(): Colour {
        return Colour.fromHEX("#FFFFFF");
    }
    

    public static get Red(): Colour {
        return Colour.fromHEX("#FF0000");
    }
    
    public static get Green(): Colour {
        return Colour.fromHEX("#00FF00");
    }
    
    public static get Blue(): Colour {
        return Colour.fromHEX("#0000FF");
    }
    
    
    public static get Cyan(): Colour {
        return Colour.fromHEX("#00FFFF");
    }
    
    public static get Magenta(): Colour {
        return Colour.fromHEX("#FF00FF");
    }
    
    public static get Yellow(): Colour {
        return Colour.fromHEX("#FFFF00");
    }
    

    public static get Grey(): Colour {
        return Colour.fromHEX("#808080");
    }
    
    public static get Silver(): Colour {
        return Colour.fromHEX("#C0C0C0");
    }
    
    
    public static get Purple(): Colour {
        return Colour.fromHEX("#800080");
    }
    
    public static get Navy(): Colour {
        return Colour.fromHEX("#000080");
    }
    
    public static get Maroon(): Colour {
        return Colour.fromHEX("#800000");
    }
    

    public static get GMDarkGrey(): Colour {
        return Colour.fromHEX("#404040");
    }
    
    public static get GMGreen(): Colour {
        return Colour.fromHEX("#008000");
    }
    
    public static get GMOlive(): Colour {
        return Colour.fromHEX("#808000");
    }
    
    public static get GMOrange(): Colour {
        return Colour.fromHEX("#FFA040");
    }
    
    public static get GMTeal(): Colour {
        return Colour.fromHEX("#008080");
    }
    

    public static fromHEX(hexcode: string): Colour {
        return new Colour();
    }

    public static merge(colourA: Colour, colourB: Colour, amount: number): Colour {
        return new Colour();
    }

}