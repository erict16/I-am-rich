//
//  ContentView.swift
//  I am rich
//
//  Created by Eric Tan on 14/6/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 10)
            Image("Flavien")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 650)
                .cornerRadius(20)
            
            Spacer().frame(height: 30)
            ZStack {
                Button(action: {
                    print("Button was tapped")
                }) {
                    Text("Sign in")
                        .padding(20)
                        .frame(width: 350, height: 60)
                        .background(Color(.systemGray6))
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1) // Set the border color and width
                        )
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

