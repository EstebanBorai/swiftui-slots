//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Esteban on 4/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isHearted = false;
    @State private var heartCount = 0;

    var body: some View {
        VStack {
            Button(action: {
                self.isHearted.toggle()
                
                if self.isHearted {
                    self.heartCount += 1;
                }
            }, label: {
                if isHearted {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                } else {
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                }
            })
            Text(String.init(heartCount))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
