import SwiftUI

import Foundation

struct ContentView: View {
        @State var counter = 0
        @State var cpc = 1
        @State var showAlert = false
        @State var shouldHide = false
        @State var MoonPoint = 0
        
        var body: some View {
            VStack {
                Image("cookie3")
                Text("total clicks = \(counter)")
                Text("click amount per click = \(cpc)")
                Text("moon travel thingys = \(MoonPoint)")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                Text("Test")
                HStack{
                    Button {
                        counter += cpc
                    } label: {
                        Text("click here to generate clicks")
                    }
                    
                    Button(action: {counter += cpc}, label: {
                        Text("click here to generate clicks")
                            .foregroundColor(.blue)
                    })
                    
                    if counter >= 50 {Button("upgrade", action: {counter -= 50; cpc += 1})
                            .disabled(false)
                    } else if counter <= 49 {
                        Button("upgrade", action: {counter -= 0; cpc += 0})
                            .disabled(true)
                            .hidden()
                    }
                }
                if counter == 69 {Button("funny", action: {counter -= 69; cpc += 419})
                        .disabled(false)
                } else if counter != 69 {Button("funny", action: {counter -= 69; cpc += 420})
                        .disabled(true)
                        .hidden()
                }
                Image("moon Small")
                Text("click me to go to moon! (1k points")
                if counter >= 1000 {Button("click me to go to moon! (1k points", action: {counter -= 1000; MoonPoint += 1})
                        .disabled(false)
                } else if counter <= 999 {Button("click me to go to moon! (1k points", action: {counter -= 0})
                        .disabled(true)
                }
                
            }
                    if MoonPoint >= 1 {NavigationLink("moon travel"){Moon} .disabled(false)
                    } else if MoonPoint == 0 {NavigationLink("moon trvael"){Moon}
                            .disabled(true)
            
            
                    }
        }
    }

// Stretch 1: Click and make it show up

// Stretch 2: Cookie image

// Stretch 3: Upgrade

// Stretch 4: Figure out how to resize images

// Stretch 5: 69
    
// Stretch 6: Critical error (2)

// Stretch 7: Moon

// Stretch 8: Mars

//  Stretch 9: Easter for 420,000 with mario
