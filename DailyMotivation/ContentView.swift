//
//  ContentView.swift
//  DailyMotivation
//
//  Created by Work on 16.08.23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messages = ["You Are Fantastic!", "Your Code Journey Will Succeed!", "You Can Do It!", "Don't Give Up!", "It's Not Over If You Give Up!", "Keep Going!", "Don't Stop!", "Always Work!", "You Are A Champion!"]
    @State private var messagesNumber = 0
    
    var body: some View {
        
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            
            Text(messageString)
                .foregroundColor(.pink)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
            HStack {
                Button("Show Message") {
                    
                    
                    messageString = messages[Int.random(in: 0...messages.count-1)]
                    messagesNumber += 1
                    if messagesNumber == messages.count {
                        messagesNumber = 0
                        
                        
                        
                        
                    }
                    
                    
                    
                    imageName = "image\(Int.random(in: 0...9))"
                    
                }
                
                
            }
        }
        .tint(.accentColor)
        .buttonStyle(.borderedProminent)
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
