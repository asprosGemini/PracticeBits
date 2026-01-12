//
//  Bit04B_Enums_Switch.swift
//  PracticeBits
//
//  Created by Frank Noyola on 1/12/26.
//

import Foundation

func runBit04B_Enums_Switch() {
    section("Bit 04B — Enums + switch")

    // Keep this enum LOCAL to this bit so it doesn’t collide with PB-4A.
    enum Status: String {
        case ok
        case warning
        case error
    }

    // =====================================================
    // PB-4B — Switch + compiler safety
    // Rule: edit existing code only
    // =====================================================

    // 4.5 Change ONE thing so result equals "ALL GOOD"
    let statusA: Status = .ok
    let resultA: String
    switch statusA {
    case .ok:
        resultA = "ALL GOOD"
    case .warning:
        resultA = "CAUTION"
    case .error:
        resultA = "FAIL"
    }
    checkAnswer("4.5", resultA, equals: "ALL GOOD")

    // 4.6 Change ONE thing so result equals "CAUTION"
    let statusB: Status = .warning
    let resultB: String
    switch statusB {
    case .ok:
        resultB = "OK"
    case .warning:
        resultB = "CAUTION"
    case .error:
        resultB = "FAIL"
    }
    checkAnswer("4.6", resultB, equals: "CAUTION")

    // 4.7 Change ONE thing so isCritical equals true
    let statusC: Status = .error
    let isCritical: Bool
    switch statusC {
    case .ok:
        isCritical = false
    case .warning:
        isCritical = false
    case .error:
        isCritical = true
    }
    checkAnswer("4.7", isCritical, equals: true)

    // 4.8 Change ONE thing so message equals "Handled"
    let statusD: Status = .ok
    let message: String
    switch statusD {
    case .ok:
        message = "Handled"
    case .warning:
        message = "Handled"
    case .error:
        message = "Unhandled"
    }
    checkAnswer("4.8", message, equals: "Handled")

    print("\n✅ Done with PB-4B — Enums + switch\n")
}
