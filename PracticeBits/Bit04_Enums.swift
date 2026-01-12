//
//  Bit04_Enums.swift
//  PracticeBits
//
//  Created by Frank Noyola on 1/12/26.
//

import Foundation

func runBit04_Enums() {
    section("Bit 04 — Enums (Warmup)")

    // =====================================================
    // PB-4A — Warmup
    // Goal: get comfortable with enum cases + raw values
    // =====================================================

    enum Status: String {
        case ok
        case warning
        case error
    }

    // 4.1 Change ONE thing so this equals "ok"
    let s1: Status = .ok
    checkAnswer("4.1", s1.rawValue, equals: "ok")

    // 4.2 Change ONE thing so this equals "error"
    let s2 = Status.error
    checkAnswer("4.2", s2.rawValue, equals: "error")

    // 4.3 Change ONE thing so this equals true
    let isBad = (s2 == .error)
    checkAnswer("4.3", isBad, equals: true)

    // 4.4 Change ONE thing so this equals "Status: warning"
    let label = "Status: \(Status.warning)"
    checkAnswer("4.4", label, equals: "Status: warning")

    print("\n✅ Done with PB-4A — Enums (Warmup)\n")
}
