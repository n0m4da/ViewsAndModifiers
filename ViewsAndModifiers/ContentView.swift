//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Luis Rivera on 19/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button("hello, world!"){
            //MARK: - button
            print(type(of: self.body))
        }
        .buttonStyle(.bordered)
        .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
        .tint(.yellow.opacity(4))
        .foregroundStyle(.black)
        .padding(20)
        .background(.red)
        .padding()
        .background(.black)
        .padding()
        .background(.green)
        .padding()
        .background(.yellow)
        //important: swiftui render the view after every modifier
        
        
//        VStack{
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.red.gradient)
        //note if you place in background before the frame, it will no take the correct size
       

    }
    
}

#Preview {
    ContentView()
}
