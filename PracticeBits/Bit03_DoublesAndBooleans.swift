//
//  Bit03_DoublesAndBooleans.swift
//  PracticeBits
//
//  Created by Frank Noyola on 1/11/26.
//

import Foundation

func runBit03_DoublesAndBooleans() {
    section("Bit 03 — Doubles & Booleans")

    // =====================================================
    // PB-3A — Warmup (Doubles)
    // Goal: quick numeric tweaks (change values only)
    // =====================================================

    // 3.1 Change ONE value so this equals 2.5
    let a: Double = 5
    let b: Double = 2
    let quotient = a / b
    checkAnswer("3.1", quotient, equals: 2.5)

    // 3.2 Change ONE value so this equals 9.0
    let base: Double = 3
    let product = base * 3.0
    checkAnswer("3.2", product, equals: 9.0)

    // 3.3 Change ONE value so this equals 0.75
    let numerator: Double = 3
    let denominator: Double = 4
    let fraction = numerator / denominator
    checkAnswer("3.3", fraction, equals: 0.75)

    // =====================================================
    // PB-3B — Think (Int vs Double)
    // Goal: type friction; still edit-only
    // =====================================================

    // 3.4 Change ONE thing so this equals 2.5
    // Hint: Int division behaves differently than Double division.
    let intA = 5
    let intB = 2
    let tricky = Double(intA) / Double(intB)
    checkAnswer("3.4", tricky, equals: 2.5)

    // 3.5 Change ONE thing so this equals 10.0
    // Hint: make sure at least one side becomes Double before division.
    let coins = 25
    let people = 2
    let perPerson = Double(coins) / Double(people)
    checkAnswer("3.5", perPerson, equals: 12.5)

    // =====================================================
    // PB-3C — Mini scenario (Booleans + "Clima thinking")
    // Goal: threshold logic + readable message
    // =====================================================

    // 3.6 Change ONE operator so the rule triggers correctly.
    // Rule: triggered is true when value is GREATER than threshold.
    let threshold: Double = 10
    let value: Double = 12
    let triggered = value > threshold
    checkAnswer("3.6", triggered, equals: true)

    // 3.7 Change ONE thing so the message becomes "Status: RISK"
    // Rule: if triggered is true -> "RISK", else -> "OK"
    let status = triggered ? "RISK" : "OK"
    let message = "Status: \(status)"
    checkAnswer("3.7", message, equals: "Status: RISK")

    // 3.8 Change ONE value so the rule is NOT triggered and message becomes "Status: OK"
    // (Yes, this is the reverse of 3.6/3.7 — common real-life testing.)
    let value2: Double = 10
    let triggered2 = value2 > threshold
    let status2 = triggered2 ? "RISK" : "OK"
    let message2 = "Status: \(status2)"
    checkAnswer("3.8", message2, equals: "Status: OK")

    print("\n✅ Done with Bit 03 — Doubles & Booleans\n")
}
