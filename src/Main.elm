module Main exposing (..)

import Element exposing (Element, alignRight, centerX, centerY, column, el, fill, padding, rgb, rgb255, row, spacing, text, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input exposing (button)
import String exposing (fromInt)


plusButton =
    button [ magenta, Border.width buttonWidth ] { onPress = Nothing, label = text "+" }


minusButton =
    button [ magenta, Border.width buttonWidth ] { onPress = Nothing, label = text "-" }


controlRow number =
    row [ green, Border.width rowWidth ]
        [ minusButton
        , text (fromInt number)
        , plusButton
        ]


main =
    Element.layout [ red, Border.width mainWidth ]
        (column [ centerX, black, Border.width columnWidth ]
            [ controlRow 1
            , controlRow 2
            , controlRow 3
            , controlRow 4
            ]
        )


buttonWidth =
    2


rowWidth =
    2


columnWidth =
    2


mainWidth =
    5


red =
    Border.color (rgb255 255 0 0)


green =
    Border.color (rgb255 0 255 0)


magenta =
    Border.color (rgb255 255 0 255)


black =
    Border.color (rgb 0 0 0)
