//
//  WordInterfaceBoxView.swift
//  WordInterfaceBoxView
//
//  Created by Sergio Bost on 8/8/21.
//

import SwiftUI

struct WordInterfaceBoxView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .stroke()
            HStack(spacing: 0) {
                SelfWrappingRowView(rows: 2, words: DummyData.example1)
                    .padding()
            }
        }.frame(height: UIScreen.main.bounds.height * 0.4)
            .padding()
    }
}
struct WordInterfaceBoxView_Previews: PreviewProvider {
    static var previews: some View {
        WordInterfaceBoxView()
    }
}
