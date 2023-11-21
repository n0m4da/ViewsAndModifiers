//
//  customModifier.swift
//  ViewsAndModifiers
//
//  Created by Luis Rivera on 21/11/23.
//

import SwiftUI

struct Title : ViewModifier{
    func body(content:  Content) -> some View{
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}


extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct Wattermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing){
            content
            
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func wattermarked(with text: String) -> some View {
        modifier(Wattermark(text: text))
    }
}

struct customModifier: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(Title())
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .titleStyle()
            .tint(.purple)
      
        Color.blue
            .frame(width: 300, height: 200)
            .wattermarked(with: "Hacking with swift")
        
    }
}

#Preview {
    customModifier()
}
