//
//  ContentView.swift
//  ArabicGrammar
//
//  Created by Sergio Bost on 8/7/21.
//

import SwiftUI
typealias GMDisplays = GrammarManager.GrammarDisplay

struct HomeScreen: View {
    
    @EnvironmentObject var gm: GrammarManager
    var body: some View {
        ScrollView {
            VStack {
                WordInterfaceBoxView()
                Picker("Grammar Display", selection: $gm.display) {
                    ForEach(GMDisplays.allCases) { display in
                        Text(display.rawValue).tag(display)
                    }
                }.pickerStyle(.segmented)
                    .padding()
                OverviewSectionView()
            }
        }
    }
    let gridStyle = [GridItem(.adaptive(minimum: 50, maximum: 50)), GridItem(.adaptive(minimum: 50, maximum: 50)),
                     GridItem(.adaptive(minimum: 50, maximum: 50))
    ]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen().environmentObject(GrammarManager())
    }
}

struct WordView: View {
    let word: Word
    

    var body: some View {
        Button(action: { }){
            Text(word.stringValue)
                .padding()
                .background(word.type.color.opacity(0.4))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(word.type.color, lineWidth: 3))
                .cornerRadius(10)
                
        }.frame(height: 40)

    
    }
}




