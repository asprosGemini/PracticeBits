//
//  Check.swift
//  PracticeBits
//
//  Created by Frank Noyola on 1/8/26.
//

import Foundation

@discardableResult
func checkAnswer<T: Equatable>(_ id: String, _ actual: T, equals expected: T) -> Bool {
    if actual == expected {
        print("✅ Passed \(id)")
        return true
    } else {
        print("❌ \(id) Expected: \(expected), got: \(actual)")
        return false
    }
}

func section(_ title: String) {
    print("\n==================== \(title) ====================\n")
}
