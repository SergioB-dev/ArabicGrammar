//
//  ArabicGrammarApp.swift
//  ArabicGrammar
//
//  Created by Sergio Bost on 8/7/21.
//

import SwiftUI

@main
struct ArabicGrammarApp: App {
    @StateObject var gm = GrammarManager()
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environmentObject(gm)
        }
    }
}
