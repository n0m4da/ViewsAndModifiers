//
//  viewsAsPropertie.swift
//  ViewsAndModifiers
//
//  Created by Luis Rivera on 21/11/23.
//

import SwiftUI

struct viewsAsPropertie: View {
//    let motto = Text("Draco dormiens")
//    let motto2 = Text("nunquam titillandus")
    
    var  motto : some View{
        Text("Draco dormiens")
    }
    let motto2 = Text("nunquam titillandus")
    
    var spells: some View{
        VStack{
            Text("Lumos")
            Text("Obliviate")
            // the text must be be inside of stack otherwise it will return an error but not if we add @Viewbuilder  like in the example
        }
    }
    
    @ViewBuilder var spells2: some View{
            Text("Imperius")
            .foregroundStyle(.yellow)
            Text("Crucio")
            .foregroundStyle(.red)
    }
    
    var body: some View {
        VStack(spacing: 10){
            motto
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
            
            spells
            
            spells2
        }
        .padding()
    }
}

#Preview {
    viewsAsPropertie()
}
