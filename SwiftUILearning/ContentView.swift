//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Esteban on 4/17/22.
//

import SwiftUI

func printHello() {
    print("Hello")
}

struct ContentView: View {
    var appleImage: some View {
        Button(action: printHello) {
            Image("apple")
                .resizable()
                .frame(width: 50.0, height: 50.0)
        }
    };
    
    var appleImageRow: some View {
        HStack {
            Spacer()
            appleImage
            Spacer()
            appleImage
            Spacer()
            appleImage
            Spacer()
        }
    }
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
            Spacer()
            appleImageRow
            Spacer()
            appleImageRow
            Spacer()
            appleImageRow
            Spacer()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
