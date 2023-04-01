//
//  ContentView.swift
//  OneLabHW2SwiftUI
//
//  Created by Gazinho Dos Santos on 01.04.2023.
//

import SwiftUI
import UIKit



struct ContentView: View {
    var body: some View {
        ZStack {
            Color.primary.ignoresSafeArea(.all)
                .blur(radius: 100)
            VStack {
                callerName
                callDuration
                Spacer()
                callButtons
                Spacer()
                callEndButton
                Spacer()
            }
        }
    }
    
    var callerName: some View {
        Text("Jane Appleseed")
            .font(.system(size: 40))
            .fontWeight(.light)
            .foregroundColor(.white)
    }
    
    var callDuration: some View {
        Text("00:02")
            .font(.system(size: 20))
            .fontWeight(.light)
            .foregroundColor(.white)
    }
    
    var callButtons: some View {
        VStack {
            HStack(spacing: 30) {
                VStack {
                    ZStack {
                        Circle()
                            .strokeBorder(.opacity(0.5), lineWidth: 1.5)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                        Button(action: {}) {
                            Image(systemName: "mic.slash.fill")
                                .resizable()
//                                .scaledToFit()
                                .padding(10)
                                .foregroundColor(.white)
                                .frame(width: 45, height: 55)
                        }
                    }
                    Text("mute")
                        .foregroundColor(.white)
                }
                
                VStack {
                    ZStack {
                        Circle()
                            .strokeBorder(.opacity(0.5), lineWidth: 1.5)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                        Button(action: {}) {
                            Image(systemName: "circle.grid.3x3.fill")
                                .resizable()
//                                .scaledToFit()
                                .padding(10)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                        }
                    }
                    Text("keypad")
                        .foregroundColor(.white)
                }
                
                VStack {
                    ZStack {
                        Circle()
                            .strokeBorder(.opacity(0.5), lineWidth: 1.5)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                        Button(action: {}) {
                            Image(systemName: "speaker.wave.3.fill")
                                .resizable()
//                                .scaledToFit()
                                .padding(10)
                                .foregroundColor(.white)
                                .frame(width: 60, height: 50)
                        }
                    }
                    Text("speaker")
                        .foregroundColor(.white)
                }
                
                
            }
            
            HStack(spacing: 30) {
                VStack {
                    ZStack {
                        Circle()
                            .strokeBorder(.opacity(0.5), lineWidth: 1.5)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                        Button(action: {}) {
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .padding(10)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                        }
                    }
                    Text("add call")
                        .foregroundColor(.white)
                }
            
                VStack {
                    ZStack {
                        Circle()
                            .strokeBorder(.opacity(0.5), lineWidth: 1.5)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                        Button(action: {}) {
                            Image(systemName: "video.fill")
                                .resizable()
                                .scaledToFit()
                                .padding(10)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                        }
                    }
                    Text("FaceTime")
                        .foregroundColor(.white)
                }
                
                VStack {
                    ZStack {
                        Circle()
                            .strokeBorder(.opacity(0.5), lineWidth: 1.5)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                        Button(action: {}) {
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFit()
                                .padding(10)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                        }
                    }
                    Text("contacts")
                        .foregroundColor(.white)
                }
                
                
                
            }
        }
    }
    
    var callEndButton: some View {
        HStack(alignment: .center) {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                Button(action: {}) {
                    Image(systemName: "phone.down.circle.fill")
                        .resizable()
                    
                        .foregroundColor(.red)
                }
            }
            .frame(width: 80, height: 80)
        }
//        .padding(EdgeInsets(top: 0, leading: 0, bottom: -50, trailing: 0))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
