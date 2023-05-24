//
//  ContentView.swift
//  DemoWatch Watch App
//
//  Created by Andy Pham on 24/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var label: String = "3:00"
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack(spacing: 10) {
                    Button("Left", action: {
                        debugPrint("Tap Left!")
                    })
                    .frame(
                        width: geometry.size.width / 2 - 10 / 2,
                        height: 80
                    )
                    .buttonStyle(.borderless)
                    .background(.red)
                    Button("Right", action: {
                        debugPrint("Tap Right!")
                    })
                    .frame(
                        width: geometry.size.width / 2 - 10 / 2,
                        height: 80
                    )
                    .buttonStyle(.borderless)
                    .background(.green)
                }
                .frame(
                    width: geometry.size.width
                )
                .background(.gray)
                HStack {
                    Button {
                        print("Edit button was tapped")
                    } label: {
                        Image(systemName: "plus")
                    }
                    .buttonStyle(.borderless)
                    .background(.gray)
                    Image(systemName: "minus")
                        .background(.pink)
                }
                Button(label, action: {
                    self.label = "4:00"
                })
                .background(.black)
            }
            .padding()
            .frame(
                width: geometry.size.width,
                height: geometry.size.height
            )
            .background(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
