//
//  ContentView.swift
//  DailyMotivation
//
//  Created by Work on 16.08.23.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messages = ["You Are Fantastic!", "Your Code Journey Will Succeed!", "You Can Do It!", "Don't Give Up!", "It's Not Over If You Give Up!", "Keep Going!", "Don't Stop!", "Always Work!", "You Are A Champion!"]
    @State private var messagesNumber = 0
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        
        VStack {
            
            Text(messageString)
                .foregroundColor(.pink)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
   
            Spacer()
            
            HStack {
                Button("Show Message") {
                    
                    
                    var messageNumber = Int.random(in: 0...messages.count-1)
                    while messageNumber == lastMessageNumber {
                        messageNumber = Int.random(in: 0...messages.count-1)
                    }
                    messageString = messages[messageNumber]
                    lastMessageNumber = messageNumber
                        
                    
                    
                    var imageNumber = Int.random(in: 0...9)
                    while imageNumber == lastImageNumber {
                        imageNumber = Int.random(in: 0...9)
                    }
                    imageName = "image\(imageNumber)"
                    lastImageNumber = imageNumber
                  
                   
                    
                    var soundNumber: Int
                    repeat {
                        soundNumber = Int.random(in: 0...5)
                    } while soundNumber == lastSoundNumber
                    lastSoundNumber = soundNumber
                    let soundName = "sound\(soundNumber)"
                    
                    playSound(soundName: soundName)
                   
                }
                
                
            }
        }
        .tint(.accentColor)
        .buttonStyle(.borderedProminent)
        .padding()
    }
    
    
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡 Could not read file named \(soundName)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("😡 ERROR: \(error.localizedDescription) creating audioPlayer")
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
