//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Esteban on 4/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isHearted = false;

    var body: some View {
        Button(action: {
            self.isHearted.toggle()
        }, label: {
            if isHearted {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            } else {
                Image(systemName: "heart")
                    .foregroundColor(.black)
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
