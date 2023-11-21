//
//  conditionalModifiers.swift
//  ViewsAndModifiers
//
//  Created by Luis Rivera on 20/11/23.
//

import SwiftUI

struct conditionalModifiers: View {
    @State private var userRedText : Bool = false
    
    var body: some View {
        Button("hello, world!")
        {
            userRedText.toggle()
        }
        .foregroundStyle(userRedText ? .red: .blue)
    }
}

#Preview {
    conditionalModifiers()
}
