//
//  Bit07_Dictionaries_Grouping.swift
//  PracticeBits
//
//  Bit 07 — Dictionaries & Grouping (Fix-the-code)
//  Format rules:
//  - ~99% of code provided
//  - You ONLY edit the TODO lines (or the clearly marked “FIX” lines)
//  - 8–10 exercises: easy → medium → hard → practical mini-problems
//
//  ELI5: A Dictionary is like a set of labeled boxes.
//  The label (key) tells you which box to open, and the value is what’s inside.
//

import Foundation

func runBit07_Dictionaries_Grouping() {
    section("Bit 07 — Dictionaries & Grouping")

    // ------------------------------------------------------------
    // EX 7.1 (Easy) — Count occurrences
    // Goal: counts should become:
    // ["rain": 3, "sun": 2, "clouds": 1]
    // This is resolved, on 1.27.2026
    // ------------------------------------------------------------
    let conditions = ["rain", "sun", "rain", "clouds", "sun", "rain"]

    var counts: [String: Int] = [:]
    for condition in conditions {
        // TODO: FIX this line to properly count each condition
        counts[condition, default: 0] += 1
    }
    print("7.1 Counts:", counts)

    // ------------------------------------------------------------
    // EX 7.2 (Easy) — Safe read with default
    // Goal: rainCount == 3, snowCount == 0 (because it’s missing)
    // This is resolved, on 1.27.2026
    // ------------------------------------------------------------
    let rainCount = counts["rain"] ?? 0   // TODO: FIX default
    let snowCount = counts["snow"] ?? 0   // TODO: FIX default
    print("7.2 rainCount:", rainCount, "snowCount:", snowCount)

    // ------------------------------------------------------------
    // EX 7.3 (Easy) — Update existing key (increment)
    // Goal: after incrementing "sun" once, sun should be 3
    // This is resolved, on 1.27.2026
    // ------------------------------------------------------------
    // (Don’t re-loop; just update the dictionary once.)
    counts["sun", default: 0] = 1 // TODO: FIX to increment existing value by +1
    print("7.3 Counts after +1 sun:", counts)

    // ------------------------------------------------------------
    // EX 7.4 (Medium) — Find most common condition (key + value)
    // Goal: mostCommonKey == "rain", mostCommonValue == 3
    // it appears the code is already correct? because the return comparison returns the loser but the max func grabs the winner isn't?
    // checked on 1.27.2026
    // ------------------------------------------------------------
    // ELI5: max(by:) picks the "biggest" element based on your comparison.
    let mostCommon = counts.max { a, b in
        // TODO: FIX comparison so it returns the entry with the highest VALUE
        return a.value < b.value
    }

    let mostCommonKey = mostCommon?.key ?? "none"
    let mostCommonValue = mostCommon?.value ?? 0
    print("7.4 Most common:", mostCommonKey, mostCommonValue)

    // ------------------------------------------------------------
    // EX 7.5 (Medium) — Group numbers into buckets
    // Buckets:
    // cold: < 15
    // warm: 15...29
    // hot:  >= 30
    // Goal: grouped["cold"] should include 10 and 5, grouped["hot"] includes 30 and 33
    // Resolved on 1.27.2026
    // ------------------------------------------------------------
    let temperatures = [10, 25, 30, 5, 18, 33]

    let groupedTemps = Dictionary(grouping: temperatures) { temp in
        // TODO: FIX the labels returned (cold/warm/hot)
        if temp < 15 { return "cold" }
        if temp < 30 { return "warm" }
        return "hot"
    }
    print("7.5 Grouped temps:", groupedTemps)

    // ------------------------------------------------------------
    // EX 7.6 (Medium) — Extract a group safely
    // Goal: coldTemps should be [10, 5] (order can vary), missingTemps should be []
    // I believe I resolved it on 1.27.2026
    // ------------------------------------------------------------
    let coldTemps = groupedTemps["cold"] ?? []      // TODO: FIX default
    let missingTemps = groupedTemps["freezing"] ?? [] // TODO: FIX default: changed from 999 to 0
    print("7.6 coldTemps:", coldTemps, "missingTemps:", missingTemps)

    // ------------------------------------------------------------
    // EX 7.7 (Hard) — Convert grouped dictionary into sorted summary strings
    // Goal output example (order of lines should be by key alphabetically):
    // ["cold: 2", "hot: 2", "warm: 2"]
    // Checked on 1.27.2026
    // ------------------------------------------------------------
    // ELI5: map turns each (key,value) entry into a string.
    //       sorted makes the order predictable.
    let summaryLines = groupedTemps
        .map { key, values in
            // TODO: FIX so it prints the COUNT of values for each key
            return "\(key): \(values.count)"
        }
        .sorted()

    print("7.7 Summary lines:", summaryLines)

    // ------------------------------------------------------------
    // EX 7.8 (Hard) — Build a lookup table from an array
    // Goal: lookupById[2]?.name == "Betssy", lookupById[99] == nil
    // ------------------------------------------------------------
    struct Person {
        let id: Int
        let name: String
    }

    let people: [Person] = [
        Person(id: 1, name: "Frank"),
        Person(id: 2, name: "Betssy"),
        Person(id: 3, name: "Isaac")
    ]

    var lookupById: [Int: Person] = [:]
    for p in people {
        // TODO: FIX key/value so dictionary maps id -> Person
        lookupById[0] = p
    }

    print("7.8 Lookup 2:", lookupById[2]?.name ?? "nil")
    print("7.8 Lookup 99:", lookupById[99]?.name ?? "nil")

    // ------------------------------------------------------------
    // EX 7.9 (Practical Mini-Problem) — Notification batching
    // Scenario:
    // You have notification requests (ruleType -> count).
    // You want to cap each type to a MAX per day.
    //
    // Goal:
    // capped["wind"] == 2 (because 5 capped to 2)
    // capped["rain"] == 1 (unchanged)
    // capped["freeze"] == 2 (because 3 capped to 2)
    // ------------------------------------------------------------
    let requestedPerType: [String: Int] = ["wind": 5, "rain": 1, "freeze": 3]
    let maxPerType = 2

    let capped = requestedPerType.mapValues { count in
        // TODO: FIX to return min(count, maxPerType)
        return count
    }

    print("7.9 Capped:", capped)

    // ------------------------------------------------------------
    // EX 7.10 (Practical Mini-Problem) — “All clear” vs “Risk” summary
    // Scenario:
    // You want a single summary string for the UI:
    // - If ANY bucket has > 0 items in "hot" OR "cold", show "RISK"
    // - Otherwise show "ALL CLEAR"
    //
    // Use groupedTemps from earlier.
    //
    // Goal (with temps [10,25,30,5,18,33]):
    // status == "RISK" (because both cold and hot exist)
    // ------------------------------------------------------------
    let hotCount = (groupedTemps["hot"] ?? []).count
    let coldCount = (groupedTemps["cold"] ?? []).count

    let status = (hotCount == 0 && coldCount == 0) ? "RISK" : "ALL CLEAR" // TODO: FIX logic
    print("7.10 Status:", status)
}
