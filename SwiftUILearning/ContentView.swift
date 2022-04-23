//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Esteban on 4/17/22.
//

import SwiftUI

struct Title: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text("Ukulele")
                .bold()
                .foregroundColor(.white)
                .scaledToFit()
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
        }.scaleEffect(2)
    }
}

struct CreditsCounter: View {
    var credits: Int = 0;

    var body: some View {
        Text("Credits " + String(self.credits))
            .padding(.all, 10)
            .background(Color.white.opacity(0.5))
            .cornerRadius(20)
    }
}

struct Cards: View {
    var body: some View {
        HStack {
            Spacer()

            Image("apple")
                .resizable()
                .padding(.all, 20)
                .aspectRatio(1, contentMode: .fit)
                .background(Color.white.opacity(0.5))
                .cornerRadius(20)

            Image("apple")
                .resizable()
                .padding(.all, 20)
                .aspectRatio(1, contentMode: .fit)
                .background(Color.white.opacity(0.5))
                .cornerRadius(20)

            Image("apple")
                .resizable()
                .padding(.all, 20)
                .aspectRatio(1, contentMode: .fit)
                .background(Color.white.opacity(0.5))
                .cornerRadius(20)
            
            Spacer()
        }
    }
}

struct SpinButton: View {
    private var onTap: () -> ();

    init(onTap: @escaping () -> ()) {
        self.onTap = onTap
    }

    var body: some View {
        Button(action: {
            self.onTap()
        }, label: {
            Text("Spin")
                .bold()
                .padding(.all, 10)
                .padding([.trailing, .leading], 30)
                .foregroundColor(Color.white)
                .background(Color.pink)
                .cornerRadius(20)
        })
    }
}

struct ContentView: View {
    @State private var credits: Int = 100;
    
    func addCredit() {
        self.credits += 1;
    }

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                Title()
                Spacer()
                CreditsCounter(credits: self.credits)
                Spacer()
                Cards()
                Spacer()
                SpinButton(onTap: self.addCredit)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
