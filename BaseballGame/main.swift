//
//  main.swift
//  BaseballGame
//
//  Created by eunsung on 12/7/23.
//  BaseballGame

import Foundation

var inputNumbers = [Int]()
var answerNumbers = [Int]()

class BaseballGame {
    func generateRandomNumber() -> [Int] {
        var threeDigitNumber = [Int]()
        while threeDigitNumber.count < 3 {
            let randomNumber: Int = Int.random(in: 1...9)
            if threeDigitNumber.contains(randomNumber) {
                continue
            } else {
                threeDigitNumber.append(randomNumber)
            }
        }
        return threeDigitNumber
    }
    
    func strikeOrBall(inputNumbers: Int, answerNumbers: Int) -> Int {
        var strikeCount = 0
        var ballCount = 0
        let input = String(inputNumbers).map { Int(String($0))! }
        let answer = String(answerNumbers).map { Int(String($0))! }
        for i in 0...2 {
            guard input.contains(answer[i]) else { continue }
            if i == input.firstIndex(of: answer[i]) {
                strikeCount += 1
            } else {
                ballCount += 1
            }
        }
        print("\(strikeCount) 스트라이크, \(ballCount) 볼")
        return strikeCount
    }
}

