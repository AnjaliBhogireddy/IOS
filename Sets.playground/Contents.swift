import UIKit

var greeting = "Hello, playground"


var players : Set<String> = ["David Warner", "Virat Kohli","Kane Williamson", "Steve Smith"]
//a.
print(players.count)
//b.
print(players)
//c.
print(players.contains("Steve Smith"))
//d.
players.insert("Maxwell")
print(players)
//e.
players.remove("David Warner")
print(players)

var primeNumbers : Set<Int> = [2,3,5,7,11]
var numbersList : Set<Int> = [1,2,5,9]
//a.
var unionSet : Set<Int> = primeNumbers.union(numbersList)
print(unionSet)
//b.
var intersectionSet : Set<Int> = primeNumbers.intersection(numbersList)
print(intersectionSet)
//c.
var subtractionSet : Set<Int> =
primeNumbers.subtracting(numbersList)
print(subtractionSet)

var symmDiffSet :Set<Int> =
primeNumbers.symmetricDifference(numbersList)
print(symmDiffSet)
//e.
print(primeNumbers.isSubset(of: numbersList))
