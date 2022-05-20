//
//  RGBullsEyeApp.swift
//  RGBullsEye
//
//  Created by Andrey Goncharenko on 13.05.22.
//

import SwiftUI

@main
struct RGBullsEyeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
        }
    }
}
