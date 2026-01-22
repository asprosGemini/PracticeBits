//
//  Bit06_Collections_Map_Filter.swift
//  PracticeBits
//
//  Created by Frank Noyola on 1/22/26.
//
//
//  Bit06_Collections_Map_Filter.swift
//  PracticeBits
//

import Foundation

func runBit06_Collections() {
    print("Bit 06 — Collections & Transformations")

    let temperatures = [72, 65, 30, 28, 80, 90]

    // -----------------------------------
    // 6.1 — Filter freezing temperatures
    // Goal: keep only temps below 32
    // Expected: [30, 28]
    // -----------------------------------

    let freezingTemps = temperatures.filter { temp in
        // TODO: fix this
        return temp < 32
    }

    print("Freezing temps:", freezingTemps)

    // -----------------------------------
    // 6.2 — Convert temperatures to strings
    // Goal: ["72°F", "65°F", ...]
    // -----------------------------------

    let formattedTemps = temperatures.map { temp in
        // TODO
        return "\(temp)°F"
    }

    print("Formatted:", formattedTemps)

    // -----------------------------------
    // 6.3 — Find first dangerous temperature (> 85)
    // -----------------------------------

    let firstHot = temperatures.first(where: { temp in
        // TODO
        return temp > 85
    })

    print("First hot temp:", firstHot ?? -1)

    // -----------------------------------
    // 6.4 — Count how many freezing temps exist
    // -----------------------------------

    let freezingCount = temperatures.filter { temp in
        // TODO
        return temp < 32
    }.count

    print("Freezing count:", freezingCount)

    // -----------------------------------
    // 6.5 — Reduce: average temperature
    // -----------------------------------

    let sum = temperatures.reduce(0) { partial, value in
        // TODO
        return partial + value
    }

    let average = sum / temperatures.count
    print("Average temp:", average)
}
