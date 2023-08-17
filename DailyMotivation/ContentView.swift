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
         
            
            Text(messageString)
                .foregroundColor(.pink)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
            HStack {
                Button("Show Message") {
                    
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    
                    
                    messageString = (messageString == message1 ? message2 : message1)
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
