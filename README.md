# flagRant

`flagrant` R package to create flag-themed images

```
devtools::install_github("borstell/flagrant")

library(flagrant
```

## Country flag palettes
The purpose of this package is to provide color palettes based on country flag colors, and also the option of re-generating images with a this color-scheme.

## Functions

### `get_palette`
Input a country - English name ("Sweden"), ISO Alpha-2 ("SE"), or ISO Alpha-3 ("SWE") - and get the color palette for that country's flag.

```
> get_palette(country="Sweden")
[1] "#006aa7" "#fecc00"
```

### `get_custom_palette`
Input a country - English name ("Sweden"), ISO Alpha-2 ("SE"), or ISO Alpha-3 ("SWE") - and a number `n` and get a color palette for that country of length `n`.
If `n` is higher than the number of colors of the selected country's flag, the palette is expanded by repeating lighter color variants for the actual colors. 

```
> get_custom_palette("FIN", n=4)
[1] "#003580" "#8193d5" "#ffffff" "#ffffff"
```

### `flag_image`
Creates an `ggplot2` object of an image based on a tri-color pattern with the selected country's flag's color palette. If `destination` is chosen, an image file will be saved.

```
> trinidad <- flag_image("cb.png","TT")
```

```
> flag_image("cb.png","DK",destination="cb_DENMARK.png")
Saving 7 x 7 in image
[1] "cb_DENMARK.png"
```

#### Examples
🇸🇪 ![Sweden](https://raw.githubusercontent.com/borstell/borstell.github.io/master/images/cb_SWEDEN.png)
🇳🇱 ![Netherlands](https://raw.githubusercontent.com/borstell/borstell.github.io/master/images/cb_NETHERLANDS.png)
🇺🇸 ![](https://raw.githubusercontent.com/borstell/borstell.github.io/master/images/cb_USA.png)
🇩🇰 ![](https://raw.githubusercontent.com/borstell/borstell.github.io/master/images/cb_DENMARK.png)
🇹🇹 ![Trinidad & Tobago](https://raw.githubusercontent.com/borstell/borstell.github.io/master/images/cb_TRINIDAD.png)
🇩🇪 ![Germany](https://raw.githubusercontent.com/borstell/borstell.github.io/master/images/cb_GERMANY.png)
