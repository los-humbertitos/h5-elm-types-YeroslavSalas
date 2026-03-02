module Helper exposing
    ( AirplaneStatus(..)
    , GradeStatus(..)
    , airplaneScheduleAction
    , airportAction
    , categoricalGrade
    )


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map gradeToStatus grades


gradeToStatus : Float -> GradeStatus
gradeToStatus grade =
    if grade < 0 then
        Pending

    else if grade >= 7 then
        Approved

    else
        Failed


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Esperar"

        Delayed ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses
