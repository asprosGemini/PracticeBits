//
//  Bit02_Strings.swift
//  PracticeBits
//
//  Created by Frank Noyola on 1/10/26.
//

import Foundation

func runBit02_Strings() {
    section("Bit 02 — Strings & Interpolation")

    // ================================
    // PART A — Strings
    // ================================

    // 2.1 Change ONE value so the greeting equals "Hello, Frank"
    let name = "Frank"
    let greeting = "Hello, \(name)"
    checkAnswer("2.1", greeting, equals: "Hello, Frank")

    // 2.2 Change ONE value so the message equals "Clima is awesome"
    let appName = "Clima"
    let message = "\(appName) is awesome"
    checkAnswer("2.2", message, equals: "Clima is awesome")

    // ================================
    // PART B — Numbers + Strings
    // ================================

    // 2.3 Change ONE value so the sentence equals "Temperature: 25°C"
    let temperature = 25
    let tempText = "Temperature: \(temperature)°C"
    checkAnswer("2.3", tempText, equals: "Temperature: 25°C")

    // 2.4 Change ONE value so the sentence equals "Wind speed: 10 mph"
    let windSpeed = 10
    let windText = "Wind speed: \(windSpeed) mph"
    checkAnswer("2.4", windText, equals: "Wind speed: 10 mph")

    // ================================
    // PRACTICAL MINI-PROBLEMS
    // ================================

    // 2.5 This text should read:
    // "You have 3 active rules"
    let ruleCount = 3
    let rulesText = "You have \(ruleCount) active rules"
    checkAnswer("2.5", rulesText, equals: "You have 3 active rules")

    // 2.6 This text should read:
    // "Next check in 24 hours"
    let hours = 24
    let scheduleText = "Next check in \(hours) hours"
    checkAnswer("2.6", scheduleText, equals: "Next check in 24 hours")

    print("\n✅ Done with Bit 02 — Strings & Interpolation\n")
}
