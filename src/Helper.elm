module Helper exposing (..)

import Html



--**Ejercicios Sencillos**--
-- Primer Ejercicio--


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2



--Segundo Ejercicio--


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3



--Tercer Ejercicio--


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



--**Ejercicios de Record**--
--Primer ejercicio--


langs : List { name : String, releaseYear : Int, currentVersion : String }
langs =
    [ { name = "Python"
      , releaseYear = 1991
      , currentVersion = "Python 3.14.3"
      }
    , { name = "Java"
      , releaseYear = 1995
      , currentVersion = "Java 25"
      }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames lista =
    List.map .name lista



--Segundo Ejercicio--


type alias User =
    { name : String, uType : String }


onlyStudents : List User -> List String
onlyStudents lista =
    List.map estudiante lista


estudiante : { name : String, uType : String } -> String
estudiante miembro =
    case miembro.uType of
        "Student" ->
            .name miembro

        _ ->
            ""



--Tercer Ejercicio--


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


juegos : List Videogame
juegos =
    [ { title = "Resident Evil"
      , releaseYear = 1998
      , available = True
      , downloads = 4000000
      , genres = [ "Survival", "Horror" ]
      }
    , { title = " Super Mario"
      , releaseYear = 1985
      , available = False
      , downloads = 879000000
      , genres = [ "2D", "Plataforma" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres lista =
    List.map .genres lista



--Cuarto Ejercicio--


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "12 GB"
    , model = "LOQ"
    , brand = "Lenovo"
    , screenSize = "14´"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 []
            [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li []
                    [ Html.text ("Ram: " ++ myLaptop.ram) ]
                , Html.li
                    []
                    [ Html.text ("Modelo: " ++ myLaptop.model) ]
                , Html.li
                    []
                    [ Html.text ("Marca: " ++ myLaptop.brand) ]
                , Html.li
                    []
                    [ Html.text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
