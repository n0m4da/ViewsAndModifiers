//
//  viewComposition.swift
//  ViewsAndModifiers
//
//  Created by Luis Rivera on 21/11/23.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View{
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct viewComposition: View {

    
    var body: some View {
        VStack {
            CapsuleText(text: "First")
                .foregroundStyle(.white)
              
           CapsuleText(text: "Second")
                .foregroundStyle(.yellow)
            
        }
    }
}

#Preview {
    viewComposition()
}
