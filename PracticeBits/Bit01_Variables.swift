//
//  Bit01_Variables.swift
//  PracticeBits
//
//  Created by Frank Noyola on 1/8/26.
//

import Foundation

func runBit01_Variables() {
    section("Bit 01 — Variables & Numbers")

    // ================================
    // PART A — Variables & Mutation
    // ================================

    // 1.1 Change ONE value so the final result equals 10
    var number = 9
    number += 1
    checkAnswer("1.1", number, equals: 10)

    // 1.2 Change ONE value so the final result equals 9
    var total = 4
    total += 5
    checkAnswer("1.2", total, equals: 9)

    // 1.3 Change ONE value so the final result equals 9
    var difference = 12
    difference -= 3
    checkAnswer("1.3", difference, equals: 9)

    // 1.4 Change ONE value so the final result equals 9
    var product = 3
    product *= 3
    checkAnswer("1.4", product, equals: 9)

    // ================================
    // PART B — Remainder Operator (%)
    // ================================

    // 1.5 Change ONE value so the remainder equals 0
    let evenCheck = 8 % 1
    checkAnswer("1.5", evenCheck, equals: 0)

    // 1.6 Change ONE value so the remainder equals 1
    let oddCheck = 7 % 2
    checkAnswer("1.6", oddCheck, equals: 1)

    // ================================
    // PRACTICAL MINI-PROBLEMS
    // ================================

    // 1.7 There are 14 notifications scheduled.
    // The system processes them in batches of 5.
    // Change ONE value so the leftover equals 4.
    let totalNotifications = 14
    let batchSize = 5
    let leftoverNotifications = totalNotifications % batchSize
    checkAnswer("1.7", leftoverNotifications, equals: 4)

    // 1.8 There are 10 pizza slices shared by 3 people.
    // Change ONE value so the leftover equals 1.
    let totalSlices = 10
    let people = 3
    let leftoverSlices = totalSlices % people
    checkAnswer("1.8", leftoverSlices, equals: 1)

    print("\n✅ Done with Bit 01 — Variables & Numbers\n")
}
