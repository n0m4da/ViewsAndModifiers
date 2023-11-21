//
//  enviromentModifiers.swift
//  ViewsAndModifiers
//
//  Created by Luis Rivera on 21/11/23.
//

import SwiftUI

struct enviromentModifiers: View {
    var body: some View {
        VStack {
            Text("Grifindor")
                .blur(radius: 0)// cant override outside blur modifier
                .font(.largeTitle)//this override all modifier of vstack
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title)// enviroment mofifier can be override
        .blur(radius: 5)// regular modifier can't be override by inside modifier
    }
}

#Preview {
    enviromentModifiers()
}
