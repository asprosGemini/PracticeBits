//
//  Bit05_ErrorHandling_Throws_Try_DoCatch.swift
//  PracticeBits
//
//  Created by Frank Noyola on 1/15/26.
//

import Foundation

// ---------------------------------------------------------
// Bit 05 — Error Handling (throws / try / do-catch)
// ---------------------------------------------------------

enum WeatherError: Error {
    case noData
}

func loadTemperature(hasData: Bool) throws -> Int {
    if hasData {
        return 72
    } else {
        throw WeatherError.noData
    }
}

func runBit05_ErrorHandling() {
    section("Bit 05 — Error Handling")

    // Step 5.1 — Baseline run (expected output: Temperature: 72)
    do {
        let temp = try loadTemperature(hasData: true)
        print("Temperature: \(temp)")
    } catch {
        print("Failed to load temperature")
    }

    // Step 5.2 — Change ONLY hasData to false and observe the output
    do {
        let temp = try loadTemperature(hasData: false) // <-- change to false
        print("Temperature: \(temp)")
    } catch {
        print("Failed to load temperature")
    }
}

// Call this from wherever you trigger your bits.
// runBit05_ErrorHandling()
