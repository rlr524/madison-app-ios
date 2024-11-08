//
//  TitlePageView.swift
//  MadisonApp
//
//  Created by Rob Ranf on 6/2/24.
//

import SwiftUI

struct TitlePageView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "Title", subtitle: "Subtitle text", desc: "Banner text")
        }
        .font(.title)
    }
}

#Preview {
    TitlePageView()
}
