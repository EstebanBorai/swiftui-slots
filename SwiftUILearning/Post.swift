//
//  Post.swift
//  SwiftUILearning
//
//  Created by Esteban on 4/22/22.
//

import Foundation
import SwiftUI

struct Post: View {
    @State private var isHearted = false;
    
    var title = "No title";

    var body: some View {
        VStack {
            Image("PostImg")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            HStack {
                Button(action: {
                    self.isHearted.toggle();
                }, label: {
                    if self.isHearted {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                    } else {
                        Image(systemName: "heart")
                    }
                })
                Spacer()
                Text(title).padding([.leading, .trailing])
            }
        }
    }
}
