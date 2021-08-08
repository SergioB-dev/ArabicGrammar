//
//  GrammarManager.swift
//  GrammarManager
//
//  Created by Sergio Bost on 8/8/21.
//

import SwiftUI

final class GrammarManager: ObservableObject {
    @Published var display: GrammarDisplay = .overview
    
//MARK: - SUBSECTION STATE HANDLES
    @Published var verbSectionShowing       = false
    @Published var nounSectionShowing       = false
    @Published var particleSectionShowing   = false
    
    
     enum GrammarDisplay: String, CaseIterable, Identifiable {
        case overview           = "Overview"
        case details            = "Details"
        case relatedStories     = "Related Stories"
        
        var id: String {
            self.rawValue
        }
    }

    
    //MARK: - FUNCTIONS THAT SHOW/HIDE VIEWS
    
     func toggleVerbSectionWithAnimation() {
        withAnimation {
            self.verbSectionShowing.toggle()
            self.nounSectionShowing = false
            self.particleSectionShowing = false
        }
    }
    
    func toggleNounSectionWithAnimation() {
        withAnimation {
            self.nounSectionShowing.toggle()
            self.particleSectionShowing = false
            self.verbSectionShowing = false
        }
    }
    
    func toggleParticleSectionWithAnimation() {
        withAnimation {
            self.particleSectionShowing.toggle()
            self.verbSectionShowing = false
            self.nounSectionShowing = false
        }
    }



}
