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
    var imageNames: [String] = [];

    var body: some View {
        HStack {
            Spacer()

            Image(imageNames[0])
                .resizable()
                .padding(.all, 20)
                .aspectRatio(1, contentMode: .fit)
                .background(Color.white.opacity(0.5))
                .cornerRadius(20)

            Image(imageNames[1])
                .resizable()
                .padding(.all, 20)
                .aspectRatio(1, contentMode: .fit)
                .background(Color.white.opacity(0.5))
                .cornerRadius(20)

            Image(imageNames[2])
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
    private let pictures = ["apple", "bike", "coffee"];

    @State private var activeImage = [0, 1, 2];
    @State private var credits: Int = 100;
    @State private var isGameOver: Bool = false;
    
    func allEqual() -> Bool {
        let firstItem = self.activeImage[0];

        for imageState in activeImage {
            if firstItem != imageState {
                return false;
            }
        }
        
        return true;
    }
    
    func spin() {
        if self.credits == 0 {
            self.isGameOver = true;
            return;
        }

        for (index, _) in self.activeImage.enumerated() {
            self.activeImage[index] = Int.random(in: 0...self.pictures.count - 1);
        }
        
        if allEqual() {
            self.credits += 5;
        } else {
            self.credits -= 5;
        }
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
            
            if self.isGameOver {
                VStack {
                    Spacer()
                    Title()
                    Spacer()
                    Text("Game Over!")
                        .bold()
                        .foregroundColor(.black)
                        .scaledToFit()
                    Text("You ran out of credits :(");
                    Spacer()
                    Spacer()
                }
            } else {
                VStack {
                    Spacer()
                    Title()
                    Spacer()
                    CreditsCounter(credits: self.credits)
                    Spacer()
                    Cards(imageNames: [
                            pictures[activeImage[0]],
                            pictures[activeImage[1]],
                            pictures[activeImage[2]],
                    ])
                    Spacer()
                    SpinButton(onTap: self.spin)
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
