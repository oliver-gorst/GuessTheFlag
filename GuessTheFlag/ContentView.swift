//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Oliver Gorst on 1/3/22.
//

import SwiftUI

struct ContentView: View {
    
    var countries  = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
        VStack(spacing: 30){
        VStack{
            Text("Tap the flag of")
                .foregroundColor(.white)
            Text(countries[correctAnswer])
                .foregroundColor(.white)
        }
        
        ForEach(0..<3) {number in
            Button {
                //flag was tapped
            } label:{
                Image(countries[number])
                    .renderingMode(.original)
            }
        }
        
        Text("hello world")
            .padding()
    }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

