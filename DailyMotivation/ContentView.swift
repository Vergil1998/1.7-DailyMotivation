//
//  ContentView.swift
//  DailyMotivation
//
//  Created by Work on 16.08.23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: "speaker.wave.3", variableValue: 0.67)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.507, saturation: 0.265, brightness: 0.992))
                .cornerRadius(30)
                .shadow(color: .gray, radius: 30, x: 20, y: 20)
                .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(.teal, lineWidth: 1)
                )
                .padding()
            
            Spacer()
            
            Text(messageString)
                .foregroundColor(.pink)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .tint(.accentColor)
            .buttonStyle(.borderedProminent)
            .padding()
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
