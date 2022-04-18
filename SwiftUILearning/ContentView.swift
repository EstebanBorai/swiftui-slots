//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Esteban on 4/17/22.
//

import SwiftUI

var header: some View {
    HStack(alignment: .center, spacing: 0, content: {
        Text("Hardcore\nAvo Toast")
            .fontWeight(.black)
            .foregroundColor(.white)
            .font(.headline)
            .padding(.leading)
            .frame(width: 200, height: 50, alignment: .leading)
        Spacer()
        Image("HeartHealth")
            .padding(.trailing)
            .frame(width: 20.0, height: 20.0, alignment: .trailing)
    })
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    .background(Image("TopGradient"))
}

var footer: some View {
    HStack(alignment: .center, spacing: 0, content: {
        Text("Energize with this healthy and hearty breakfast")
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundColor(.white)
    })
    .padding(.bottom)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
    .background(Image("BottomGradient"))
}

var appBackground: some View {
    Image("Breakfast")
        .resizable()
        .ignoresSafeArea(.all)
}

struct ContentView: View {
    var body: some View {
        VStack {
            header
            Spacer()
            footer
        }.background(Image("Breakfast"))
        .frame(width: .infinity, height: .infinity, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
