//
//  OverviewSectionView.swift
//  OverviewSectionView
//
//  Created by Sergio Bost on 8/8/21.
//

import SwiftUI

//TODO: - REFACTOR

struct OverviewSectionView: View {
    @EnvironmentObject var gm: GrammarManager
    var body: some View {
        VStack {
            HStack {
                verbHeader
                    .transition(.slide)
                    .onTapGesture {
                        gm.toggleVerbSectionWithAnimation()
                    }

                Spacer()
                    
            }.padding()
            verbSectionBody()
                .transition(.scale)
            HStack {
                nounHeader
                    .transition(.slide)
                    .onTapGesture {
                        gm.toggleNounSectionWithAnimation()
                    }
                            Spacer()
            }.padding()
            nounSectionBody()
            HStack {
                particleHeader
                    .transition(.slide)
                    .onTapGesture {
                        gm.toggleParticleSectionWithAnimation()
                    }
                            Spacer()
            }.padding()
            particleSectionBody()
        }
    }
    
    @ViewBuilder private func verbSectionBody() -> some View {
        if gm.verbSectionShowing {
            VStack {
                SubSectionView(title: "DEFINITION", bodyContent: "DSFKLSDJF:LDSLFJLJSDFKL :SFJLKSFJKLFJ KLDJSFL:K SDF:LKJ:DFL J:KLFJ DSJFKL JDFKLJDS FLJDSLFK DLK:FJ L:DSJF:KLDS JFKLDJF DKSLJF DSLKFJ DSLKJF DLSKFJ LKFJLK:SJ F:LKDSJF LKSJF LKFJLKJSFLKSDJFL:KSDFJ: :LKFJ :LSKJF:LKSDJF: LK:FJK FL:KSDJFLK:SJF:LKFJLK:SJF:LKSDJF L:KDSJFL:SKFJSLKFJ SL:FKH:SDLKF :LKFSLKDJFLKDSJF:LSDK ")
                SubSectionView(title: "RULES", bodyContent: "DSFKLSDJF:LDSLFJLJSDFKL :SFJLKSFJKLFJ KLDJSFL:K SDF:LKJ:DFL J:KLFJ DSJFKL JDFKLJDS FLJDSLFK DLK:FJ L:DSJF:KLDS JFKLDJF DKSLJF DSLKFJ DSLKJF DLSKFJ LKFJLK:SJ F:LKDSJF LKSJF LKFJLKJSFLKSDJFL:KSDFJ: :LKFJ :LSKJF:LKSDJF: LK:FJK FL:KSDJFLK:SJF:LKFJLK:SJF:LKSDJF L:KDSJFL:SKFJSLKFJ SL:FKH:SDLKF :LKFSLKDJFLKDSJF:LSDK ", color: .indigo)
                SubSectionView(title: "USAGE", bodyContent: "DSFKLSDJF:LDSLFJLJSDFKL :SFJLKSFJKLFJ KLDJSFL:K SDF:LKJ:DFL J:KLFJ DSJFKL JDFKLJDS FLJDSLFK DLK:FJ L:DSJF:KLDS JFKLDJF DKSLJF DSLKFJ DSLKJF DLSKFJ LKFJLK:SJ F:LKDSJF LKSJF LKFJLKJSFLKSDJFL:KSDFJ: :LKFJ :LSKJF:LKSDJF: LK:FJK FL:KSDJFLK:SJF:LKFJLK:SJF:LKSDJF L:KDSJFL:SKFJSLKFJ SL:FKH:SDLKF :LKFSLKDJFLKDSJF:LSDK", color: .blue)
            }.padding()
        }
    }
    @ViewBuilder private func nounSectionBody() -> some View {
        if gm.nounSectionShowing {
            VStack {
                SubSectionView(title: "DEFINITION", bodyContent: "DSFKLSDJF:LDSLFJLJSDFKL :SFJLKSFJKLFJ KLDJSFL:K SDF:LKJ:DFL J:KLFJ DSJFKL JDFKLJDS FLJDSLFK DLK:FJ L:DSJF:KLDS JFKLDJF DKSLJF DSLKFJ DSLKJF DLSKFJ LKFJLK:SJ F:LKDSJF LKSJF LKFJLKJSFLKSDJFL:KSDFJ: :LKFJ :LSKJF:LKSDJF: LK:FJK FL:KSDJFLK:SJF:LKFJLK:SJF:LKSDJF L:KDSJFL:SKFJSLKFJ SL:FKH:SDLKF :LKFSLKDJFLKDSJF:LSDK ")
                SubSectionView(title: "RULES", bodyContent: "DSFKLSDJF:LDSLFJLJSDFKL :SFJLKSFJKLFJ KLDJSFL:K SDF:LKJ:DFL J:KLFJ DSJFKL JDFKLJDS FLJDSLFK DLK:FJ L:DSJF:KLDS JFKLDJF DKSLJF DSLKFJ DSLKJF DLSKFJ LKFJLK:SJ F:LKDSJF LKSJF LKFJLKJSFLKSDJFL:KSDFJ: :LKFJ :LSKJF:LKSDJF: LK:FJK FL:KSDJFLK:SJF:LKFJLK:SJF:LKSDJF L:KDSJFL:SKFJSLKFJ SL:FKH:SDLKF :LKFSLKDJFLKDSJF:LSDK ", color: .indigo)
                SubSectionView(title: "USAGE", bodyContent: "DSFKLSDJF:LDSLFJLJSDFKL :SFJLKSFJKLFJ KLDJSFL:K SDF:LKJ:DFL J:KLFJ DSJFKL JDFKLJDS FLJDSLFK DLK:FJ L:DSJF:KLDS JFKLDJF DKSLJF DSLKFJ DSLKJF DLSKFJ LKFJLK:SJ F:LKDSJF LKSJF LKFJLKJSFLKSDJFL:KSDFJ: :LKFJ :LSKJF:LKSDJF: LK:FJK FL:KSDJFLK:SJF:LKFJLK:SJF:LKSDJF L:KDSJFL:SKFJSLKFJ SL:FKH:SDLKF :LKFSLKDJFLKDSJF:LSDK", color: .blue)
            }.padding()
        }
    }
    @ViewBuilder private func particleSectionBody() -> some View {
        if gm.particleSectionShowing {
            VStack {
                SubSectionView(title: "DEFINITION", bodyContent: "DSFKLSDJF:LDSLFJLJSDFKL :SFJLKSFJKLFJ KLDJSFL:K SDF:LKJ:DFL J:KLFJ DSJFKL JDFKLJDS FLJDSLFK DLK:FJ L:DSJF:KLDS JFKLDJF DKSLJF DSLKFJ DSLKJF DLSKFJ LKFJLK:SJ F:LKDSJF LKSJF LKFJLKJSFLKSDJFL:KSDFJ: :LKFJ :LSKJF:LKSDJF: LK:FJK FL:KSDJFLK:SJF:LKFJLK:SJF:LKSDJF L:KDSJFL:SKFJSLKFJ SL:FKH:SDLKF :LKFSLKDJFLKDSJF:LSDK ")
                SubSectionView(title: "RULES", bodyContent: "DSFKLSDJF:LDSLFJLJSDFKL :SFJLKSFJKLFJ KLDJSFL:K SDF:LKJ:DFL J:KLFJ DSJFKL JDFKLJDS FLJDSLFK DLK:FJ L:DSJF:KLDS JFKLDJF DKSLJF DSLKFJ DSLKJF DLSKFJ LKFJLK:SJ F:LKDSJF LKSJF LKFJLKJSFLKSDJFL:KSDFJ: :LKFJ :LSKJF:LKSDJF: LK:FJK FL:KSDJFLK:SJF:LKFJLK:SJF:LKSDJF L:KDSJFL:SKFJSLKFJ SL:FKH:SDLKF :LKFSLKDJFLKDSJF:LSDK ", color: .indigo)
                SubSectionView(title: "USAGE", bodyContent: "DSFKLSDJF:LDSLFJLJSDFKL :SFJLKSFJKLFJ KLDJSFL:K SDF:LKJ:DFL J:KLFJ DSJFKL JDFKLJDS FLJDSLFK DLK:FJ L:DSJF:KLDS JFKLDJF DKSLJF DSLKFJ DSLKJF DLSKFJ LKFJLK:SJ F:LKDSJF LKSJF LKFJLKJSFLKSDJFL:KSDFJ: :LKFJ :LSKJF:LKSDJF: LK:FJK FL:KSDJFLK:SJF:LKFJLK:SJF:LKSDJF L:KDSJFL:SKFJSLKFJ SL:FKH:SDLKF :LKFSLKDJFLKDSJF:LSDK", color: .blue)
            }.padding()
        }
    }
    var verbHeader: some View {
        HStack {
        Rectangle()
            .fill(Color.mint)
            .frame(width: 5, height: 30)
        Text("VERBS").bold()
        }
    }
    var nounHeader: some View {
        HStack {
        Rectangle()
            .fill(Color.indigo)
            .frame(width: 5, height: 30)
        Text("NOUNS").bold()
        }
    }
    var particleHeader: some View {
        HStack {
        Rectangle()
            .fill(Color.orange)
            .frame(width: 5, height: 30)
        Text("PARTICLES").bold()
        }
    }
}

struct OverviewSectionView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewSectionView()
            .environmentObject(GrammarManager())
    }
}

struct SubSectionView: View {
    let title: String
    let bodyContent: String
    var color: Color = .orange
    
    var body: some View {
        DisclosureGroup(content: {
            Text(bodyContent)
        }) {
            HStack {
                Text(title)
                Spacer()
                    
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 5)
            .background(color.opacity(0.4))
        }.buttonStyle(.plain)
    }
}
