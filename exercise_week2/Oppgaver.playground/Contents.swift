import Foundation
/*
# Øvingsoppgaver forelesning 2


## Oppgave 1a: 
Lag en funksjon, minimum, som tar to verdier, og returnerer den minste

minimum(a: 54, b: 392)   // 54
*/

func minimum(a: Int, b: Int) -> Int{
    return a < b ? a : b
    
}

minimum(a: 54, b: 392)

/*
## Oppgave 1b: Lag samme type funksjon for maximum

maximum(a:54, b: 392)    // 392
*/

func maximum(a: Int, b: Int) -> Int{
    return a > b ? a : b
    
}
maximum(a: 54, b: 392)


/*
Oppgave 2:
Lag en funksjon, sumOfAllValues, som summerer all verdiene i et array

sumOfAllValues(inArray: [34,10,10,10,100]) //  164
*/

func sumOfAllValues(inArray: Array<Int>) -> Int{
    return inArray.reduce(0, +)
}
    sumOfAllValues(inArray: [34, 10, 10, 10, 100])
    



/*
## Oppgave 3a: 
Lag en funksjon, numbersBiggerThan, som tar inn et tall, og et array og returnerer alle verdiene i arrayet som var større enn tallet som ble gitt

numbersBiggerThan(54, [34,39,100,493,1,5])    // [ 100, 493 ]
 */

/*
## Oppgave 3b: Utvid funksjonen til å returnere nil hvis ingen verdier var større enn tallet du ga

numbersBiggerThan(999, [34,39,100,493,1,5])    // nil ,   MERK: nil er ikke det samme som et tomt array
*/
func numbersBiggerThan(values: Array<Int>, number: Int) -> Array<Int>?{
    let val = values.filter {$0 > number }
    if(val.count > 0) {
        return val
    } else {
        return nil
    }
}

numbersBiggerThan(values: [34,39,100,493,1,5], number: 54)    // [ 100, 493 ]


/*
## Oppgave 4a:
Lag denne funksjonen. Output skal være "WWWWW"

repeatCharacter(Character("W"), 5)
*/

func repeatCharacter(char: Character, times: Int) -> String{
   var repeatedString = ""
    for _ in 0 ..< times {
        repeatedString.append(char)
    }
    return repeatedString
    
}
    repeatCharacter(char: Character("W"), times: 5)



/*
## Oppgave 4b
Utvid funksjonen til å støtte default parametere. Dvs. at når times ikke oppgis, så skal den som standard settes til 1. Output her blir altså "W"

repeatCharacter(Character("W"))
*/


func repeatCharacter2(char: Character, times: Int = 1) -> String {
    
    var finalString: String = ""
       for _ in 0 ..< times {
        finalString.append(char)
    }
    return finalString
}
repeatCharacter2(char: Character("W"))



/*

## Oppgave 5a :

Lag en funksjon og en enum gjør at du kan definere denne metoden :

setCase(text: "Interstellar", case: .Uppercase) // INTERSTELLAR
setCase(text: "Interstellar", case: .Lowercase) // interstellar
*/


/*
## Opppgave 5b
utvid funksjonen til å akseptere nil som case argument, hvor den da velger uppercase

setCase(text: "Interstellar", case: nil) // INTERSTELLAR

*/

/*
## Oppgave 5c 
utvid funksjonen til å ha default nil som case arugment, slik at man kan, men ikke trenger å gi case

setCase(text: "Interstellar") // INTERSTELLAR
*/



/*
## Oppgave 5d
utvid funksjonen til å kunne ta nil som text argument også, men da retunerer nil

setCase(text: nil) // nil
*/
enum Letters {
    
    
    case Uppercase
    case Lowercase
    
}

func setCase(text: String?, format: Letters? = nil) -> String? {
    if let txt = text{
        if(format == .Lowercase){
            return txt.lowercased()
        } else{
            return txt.uppercased()
        }
    } else {
        return nil
    }
}

setCase(text: "Interstellar", format: .Uppercase) // INTERSTELLAR
setCase(text: "Interstellar", format: .Lowercase) // interstellar
setCase(text: "Interstellar", format: nil) // INTERSTELLAR
setCase(text: "Interstellar") // INTERSTELLAR
setCase(text: nil) // nil

/*
## Oppgave 6a
Lag en funksjon som kan ta inn et variabelt antall parametere, og sum regner ut produktet av disse:

calculate(2, 5, 5) // --> 50
calculate(10, 10) // --> 100
*/

func calculate(numbers: Int...) -> Int {
    var sum: Int = 1;
    for numb in numbers{
        sum = sum  * numb
    }
    return sum
}

calculate(numbers: 2, 5, 5) //--> 50
calculate(numbers: 10, 10) // --> 100


/*
## Oppgave 6b
Utvid funksjonen slik at den støtter utregning av både produkt og sum (med enum som første parameter):

calculate(.Product, 2, 5, 5) // -> 50
calculate(.Product, 10, 10) // -> 100
calculate(.Sum, 2, 5, 5) // -> 12
calculate(.Sum, 10, 10) // -> 20
*/
enum sumType{
    case Sum
    case Product
}


func calculate1(liste: sumType, numbers: Int...) -> Int {
    var sum: Int = 0
    
    if liste == sumType.Product{
        sum = 1
        for numb in numbers{
            sum = sum * numb
        }
        return sum
    }else{
        for numb in numbers{
            sum = sum + numb
        }
        return sum
    }
}

calculate1(liste: .Product, numbers: 2, 5, 5) // -> 50
calculate1(liste: .Product, numbers: 10, 10) // -> 100
calculate1(liste: .Sum, numbers: 2, 5, 5) // -> 12
calculate1(liste: .Sum, numbers: 10, 10) // -> 20

/*
## Oppgave 6c
Endre funksjonen slik at den returnerer flere verdier, og alltid regner ut både produkt og sum:
*/
 
func calculate2(numbers: Int...) -> (product: Int, sum: Int) {
    var pro: Int = 1
    var sum: Int = 0
    
    for p in numbers {
        pro = pro * p
    }
        for s in numbers {
        sum = sum + s
        }
    
    return (pro, sum)
}

 
 
let result = calculate2(numbers: 2, 5, 5)
print("Produkt: \(result.product), Sum: \(result.sum)")


/*
## Oppgave 7
Lag en funksjon getCalculator, som tar imot en operator. Dersom operatoren er gyldig (er + eller *) skal riktig regnefunksjon returneres, som igjen kan kalles for å utføre selve regneoperasjonen. Hvis operatoren ikke er støttet (altså ikke er + eller *) skal nil returneres.

// Skal kunne regne ut produkt ved å bytte ut + med *:
if let calcFn = getCalculator("+") {
print(calcFn([3, 6, 9]))
}
*/

func getCalculator(operatortype: Character) -> (([Int]) -> Int)?{
    if operatortype == "+" {
        func num(numbers :[Int]) -> Int{
            var sum = 0
            for numb in numbers{
                sum = sum + numb
            }
            return sum
        }
        return num
    }else if operatortype == "*" {
        func product(numbers :[Int]) -> Int{
            var sum = 1
            for numb in numbers{
                sum = sum * numb
            }
            return sum
        }
        return product
    }else{
        return nil
    }
}

if let calcFn = getCalculator(operatortype: "+") {
    print(calcFn([3, 6, 9]))
}else{
    print("wrong input")
}



/*
# Oppgave 8
Lag en request-metode som tar inn en string som første
parameter, og en closure som 2. parameter:

request("http://www.vg.no", { beskrivelse in
if beskrivelse {
print(beskrivelse)
} else {
print("Fant ikke noen beskrivelse")
}
})

Når URLen er `http://www.vg.no` som i eksemplet, skal
beskrivelsen være "Verdens gang". Dersom URLen er `http://www.aftenposten.no` skal beskrivelsen være "Aftenposten". I andre tilfeller er beskrivelsen `nil` og `Fant ikke noen beskrivelse` skal skrives ut
*/

func request(url: String, closure: (_ beskrivelse:String?) -> ()) {
    switch(url){
 case "http://www.vg.no":
    closure("Verdens gang")
case "http://www.aftenposten.no":
    closure("Aftenposten")

default:
        closure( nil)
    }
    
}

request(url: "http://www.vg.no", closure: { beskrivelse in
    
    if (beskrivelse != nil) {
        print(beskrivelse)
    } else {
        print("Fant ingen beskrivelse")
    }
})
/*

# Oppgave 9 a.

Lag en metode som tar string som 1. parameter, success-closure som 2. parameter, og error-closure som 3.parameter. Response skal være av typen [NSObject : AnyObject], og error skal være av typen NSError

startRequesting(url:"http://http.cat", success: { (response) in
     print(response)
}, failure: { (error) in
     print(error)
}*/



func startRequesting(url: String, success: (AnyObject) -> (), failure: ((Error) -> ())){

}
startRequesting(url:"http://http.cat",
                success: { (response) in print(response) },
                failure: { (error) in print(error) })


/*
# Oppgave 9 b.

Gjør om metoden til å kunne kalles med optional failure closure som er default nil.

startRequesting(url:"http://http.cat", success: { (response) in
     print(response)
}
*/

func startRequesting(url: String,
                     success: (AnyObject) -> (),
                     failure: ((Error) -> ())? = nil){
}

startRequesting(url:"http://http.cat", success: { (response) in
    print(response)

})



/*
# Oppgave 9 c.

Legg til en enum som sier hva slags HTTP-verb som skal brukes
enumen skal ha GET, POST, PUT og DELETE

startRequesting(url:"http://http.cat", method: httpMethod.GET, success: { (response) in
     print(response)
}
*/

enum httpMethod{
    case GET
    case PUT
    case POST
    case DELETE
}

func startRequesting(url: String, method: httpMethod, success: (AnyObject) -> (), failure: ((Error) ->())? = nil) {}


startRequesting(url:"http://http.cat", method: httpMethod.GET, success: { (response) in
    print(response)

})



/*
# Oppgave 10:

Fullfør dette programmet:

// 1. Lag en struct `Coordinate` som inneholder lat/long her

/* 2. Lag en klasse `GeoCache` som har properties for:
- Coordinate
- name
- hint
- log (en array med strenger)

Lag en `signLog` metode som legger igjen en beskjed i cacheloggen
*/

let cache = /* instansier og populer GeoCache, eks:
lat: 59.91126
long: 10.76046
name: Westerdals
hint: Rom 81
*/

cache.signLog("Someone was here...")
cache.signLog("I was here!")
println(cache.description)

Slik at det ender med å skrive ut:

Westerdals
59.0 42.0
Hint: Rom 81

Logg:
Someone was here...
I was here!
*/






