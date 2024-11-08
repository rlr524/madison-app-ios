//
//  HeaderView.swift
//  MadisonApp
//
//  Created by Rob Ranf on 6/2/24.
//

import SwiftUI

struct HeaderView: View {
    var title = "Title"
    var subtitle = "Subtitle"
    var desc = "Use this to..."
    var back = Color.orange
    var textColor = Color.black
    
    init(title: String = "Title", subtitle: String = "Subtitle", desc: String = "Use this to...", back: Color = Color.orange, textColor: Color = Color.black) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        VStack(spacing: 15) {
            if !title.isEmpty {
                Text(title)
                    .font(.largeTitle)
            }
            
            Text(subtitle)
                .foregroundStyle(.gray)
            
            DescView(desc: desc, back: back, textColor: textColor)
        }
    }
}

struct DescView: View {
    var desc = "Use this to..."
    var back = Color.orange
    var textColor = Color.black
    
    init(desc: String, back: SwiftUI.Color = Color.orange, textColor: SwiftUI.Color = Color.black) {
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    
    var body: some View {
        Text(desc)
            .frame(maxWidth: .infinity)
            .padding()
            .background(back)
            .foregroundStyle(textColor)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", desc: "What does what", back: .green, textColor: .white)
}
