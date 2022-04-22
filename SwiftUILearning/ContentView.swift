//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Esteban on 4/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Post(title: "Testing")
            Post(title: "Testing Variables")
            Post(title: "Beautiful Building")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
