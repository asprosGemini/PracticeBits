//
//  Bit08_ErrorHandling_Throws_Try_DoCatch.swift
//  PracticeBits
//
//  Created by Frank Noyola on 2/20/26.
//

import Foundation

func runBit08_ErrorHandling_Throws_Try_DoCatch() {
    section("Bit 08 — Error Handling (throws / try / do-catch)")

    // ============================================================
    // ELI5 (read this once, then do exercises)
    //
    // - "throws" means: "this function might FAIL, and I want the caller to handle it."
    // - "try" means: "I acknowledge this might fail."
    // - "do { } catch { }" means: "if it fails, handle the error here."
    // - "try?" means: "if it fails, give me nil instead."
    // - "try!" means: "crash if it fails" (usually avoid).
    // ============================================================

    // ------------------------------------------------------------
    // EX 8.1 (Easy) — Define a custom error
    // Goal: Create an enum called InputError that conforms to Error
    // with cases: empty, tooShort(min: Int)
    // ------------------------------------------------------------
    enum InputError /* TODO: FIX */ {
        // TODO: add cases
        // case empty
        // case tooShort(min: Int)
    }

    // ------------------------------------------------------------
    // EX 8.2 (Easy) — Throw on invalid input
    // Goal: validateUsername(_:) should:
    // - throw InputError.empty if username is empty
    // - throw InputError.tooShort(min: 3) if username.count < 3
    // - otherwise return username lowercased
    // ------------------------------------------------------------
    func validateUsername(_ username: String) /* TODO: FIX */ -> String {
        // TODO: add throws and correct logic
        if username.isEmpty {
            // throw InputError.empty
        }
        if username.count < 3 {
            // throw InputError.tooShort(min: 3)
        }
        return username.lowercased()
    }

    // ------------------------------------------------------------
    // EX 8.3 (Easy) — Call a throwing function with do/catch
    // Goal: print "8.3 OK: <name>" for a valid name,
    // otherwise print "8.3 ERROR: <some message>"
    // ------------------------------------------------------------
    do {
        let name = /* TODO: FIX */ try validateUsername("Fr")
        print("8.3 OK:", name)
    } catch {
        print("8.3 ERROR:", error)
    }

    // ------------------------------------------------------------
    // EX 8.4 (Medium) — Pattern-match specific errors in catch
    // Goal: Use multiple catch blocks so you print:
    // - "8.4 ERROR: empty" for InputError.empty
    // - "8.4 ERROR: too short (min 3)" for InputError.tooShort(min: 3)
    // - "8.4 ERROR: unknown" for anything else
    // ------------------------------------------------------------
    do {
        let name = try validateUsername("") // test empty
        print("8.4 OK:", name)
    } /* TODO: FIX catch blocks */ catch {
        print("8.4 ERROR: unknown")
    }

    // ------------------------------------------------------------
    // EX 8.5 (Medium) — Convert throws into an Optional with try?
    // Goal:
    // - goodResult should be "frank"
    // - badResult should be nil
    // ------------------------------------------------------------
    let goodResult: String? = /* TODO: FIX */ try? validateUsername("Frank")
    let badResult: String? = /* TODO: FIX */ try? validateUsername("")

    print("8.5 goodResult:", goodResult ?? "nil")
    print("8.5 badResult:", badResult ?? "nil")

    // ------------------------------------------------------------
    // EX 8.6 (Medium) — Throwing from a parsing function
    // Goal: parseInt(_:) should:
    // - throw InputError.empty if text is empty
    // - return Int if conversion works
    // - otherwise throw a NEW error type ParseError.notANumber(text: String)
    // ------------------------------------------------------------
    enum ParseError: Error {
        case notANumber(text: String)
    }

    func parseInt(_ text: String) /* TODO: FIX */ -> Int {
        // TODO: add throws + logic
        if text.isEmpty {
            // throw InputError.empty
        }
        // if let n = Int(text) { return n }
        // throw ParseError.notANumber(text: text)
        return 0
    }

    // ------------------------------------------------------------
    // EX 8.7 (Hard) — Validate a list: collect successes, count failures
    // Scenario: You have a list of strings that should become Ints.
    // Goal:
    // - validInts should end up [10, 20, 30]
    // - failures should end up 2
    //
    // Rule: Use do/catch inside the loop.
    // ------------------------------------------------------------
    let rawNumbers = ["10", "xx", "20", "", "30"]

    var validInts: [Int] = []
    var failures = 0

    for text in rawNumbers {
        // TODO: FIX using do/try/catch
        // if parseInt succeeds -> append
        // if it throws -> failures += 1
    }

    print("8.7 validInts:", validInts, "failures:", failures)

    // ------------------------------------------------------------
    // EX 8.8 (Hard) — Make an error human-readable
    // Goal: Write a function errorMessage(for:) that returns:
    // - "Please enter a value." for InputError.empty
    // - "Must be at least <min> characters." for InputError.tooShort(min:)
    // - "Not a number: <text>" for ParseError.notANumber(text:)
    // - "Something went wrong." for anything else
    // ------------------------------------------------------------
    func errorMessage(for error: Error) -> String {
        // TODO: FIX with pattern matching (switch or if case)
        return "Something went wrong."
    }

    // Quick tests for 8.8:
    print("8.8 msg empty:", errorMessage(for: /* TODO: FIX */ ParseError.notANumber(text: "abc")))
    // Try also:
    // print(errorMessage(for: InputError.empty))
    // print(errorMessage(for: InputError.tooShort(min: 3)))

    // ------------------------------------------------------------
    // EX 8.9 (Practical Mini-Problem) — Clamp user input with safe fallback
    // Scenario:
    // User enters a daily limit as text.
    // Rules:
    // - empty -> default to 1
    // - not a number -> default to 1
    // - number < 1 -> clamp to 1
    // - number > 5 -> clamp to 5
    //
    // Goal (with input "9"): dailyLimit == 5
    // Goal (with input "0"): dailyLimit == 1
    // Goal (with input "abc"): dailyLimit == 1
    // ------------------------------------------------------------
    let inputLimitText = "9"

    let dailyLimit: Int = {
        // TODO: FIX using parseInt + do/catch OR try?
        // Keep it readable.
        return 1
    }()

    print("8.9 dailyLimit:", dailyLimit)

    // ------------------------------------------------------------
    // EX 8.10 (Practical Mini-Problem) — “All clear” vs “Needs attention”
    // Scenario:
    // You validate a list of usernames; if ANY are invalid, status is "NEEDS ATTENTION"
    // otherwise "ALL CLEAR".
    //
    // Goal:
    // usernames ["Frank", "Al", "Betssy"] -> "NEEDS ATTENTION" (because "Al" too short)
    // usernames ["Frank", "Ana", "Betssy"] -> "ALL CLEAR"
    // ------------------------------------------------------------
    let usernames = ["Frank", "Al", "Betssy"]

    let status: String = {
        // TODO: FIX: loop through usernames, validate each with try
        // If any throw -> return "NEEDS ATTENTION"
        // Else -> "ALL CLEAR"
        return "ALL CLEAR"
    }()

    print("8.10 status:", status)
}
