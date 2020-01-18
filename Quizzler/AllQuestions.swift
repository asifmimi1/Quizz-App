//  AllQuestions.swift
//  Quizzler
//
//  Created by Asif Rabbi on 18/1/20.


import Foundation

class AllQuestions {
    var items = [Questions]()
    
    init() {
        items.append(Questions(text: "Apple is to tree as chicken is to egg", answere: true))
        items.append(Questions(text: "God is to Dog as King is to Cat", answere: false))
        items.append(Questions(text: "Nimbus clouds are clouds accompanied by rain.", answere: true))
        items.append(Questions(text: "There is no difference between a Thundershower and a Thunderstorm", answere: true))
        items.append(Questions(text: "There is no difference between a snow squall and a blizzard", answere: false))
        items.append(Questions(text: "Unlike a blizzard, a snow squall must include falling snow", answere: true))
        items.append(Questions(text: "The capital of Libya is Benghazi.", answere: false))
        items.append(Questions(text: "Albert Einstein was awarded the Nobel Prize in Mathametics", answere: false))
        items.append(Questions(text: "Brazil is the only country in the Americas whose official language is Portuguese", answere: true))
        items.append(Questions(text: "The American Civil War ended in 1776", answere: false))
        items.append(Questions(text: "A right triangle can never be equilateral", answere: true))
        items.append(Questions(text: "Snow White’s seven dwarfs all worked as lumberjacks", answere: false))
        items.append(Questions(text: "No bird can fly backwards", answere: false))
//        items.append(Questions(text: "<#T##String#>", answere: <#T##Bool#>))
//        items.append(Questions(text: "<#T##String#>", answere: <#T##Bool#>))
    }
}
