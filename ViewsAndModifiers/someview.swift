//
//  someview.swift
//  ViewsAndModifiers
//
//  Created by Luis Rivera on 20/11/23.
//

import SwiftUI

struct someview: View {
    var body: some View {
        Button("hello, world!"){
            //MARK: - button
            print(type(of: self.body))
        }
        .buttonStyle(.bordered)
        .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
        .tint(.yellow.opacity(4))
        .foregroundStyle(.black)
    }
}

#Preview {
    someview()
}
