import SwiftUI
//@main
//class AppDelegate: UIResponder, UIApplicationDelegate {
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
                //                Button(action: {counter -= 50; cpc += 1}, label: {
                //                    Text("UPGRADE!")
                //                        .foregroundColor(.red)
                //                        .font(.title2)
                //                        .buttonStyle(.bordered)
                //                        .disabled(true)
                //old button i made new one hopefully works
                //                            .if counter >= 50 {disabled(false)}
                // i dont know how to do this
                
                //                    if counter < 50 { .disabled(true)}
                //                    else {disabled(false)}
                
                if counter >= 50 {Button("upgrade", action: {counter -= 50; cpc += 1})
                        .disabled(false)
                } else if counter <= 49 {Button("upgrade", action: {counter -= 0; cpc += 0})
                        .disabled(true)
                        .hidden()
                }
            }
            if counter == 69 {Button("funny", action: {counter -= 69; cpc += 20})
                    .disabled(false)
            } else if counter != 69 {Button("funny", action: {counter -= 69; cpc += 20})
                    .disabled(true)
                    .hidden()
            }
            Image("moon")
            Text("click me to go to moon! (1k points")
            if counter >= 1000 {Button("click me to go to moon! (1k points", action: {counter -= 1000; MoonPoint += 1})
                    .disabled(false)
            } else if counter <= 999 {Button("click me to go to moon! (1k points", action: {counter -= 0})
                    .disabled(true)
            }
//            NavigationLink("press me") {
//                        NewView()
            //nav links
                    }
        if MoonPoint >= 1 {NavigationLink("moon travel"){Moon}
                    .disabled(false)
        } else if MoonPoint == 0 {NavigationLink("moon trvael"){Moon}
                    .disabled(true)
                //ADD A THINGY TO TAKE YOU TO ANOTHER VIEW IWHT THE MOON
                
                //                if counter == 69 {Button("funny number", action: counter -= 69; cpc += 20)
                //                if counter == 69 { Button(funny NumberFormatter, action: counter -= 69; cpc += 20;{ showAlert.toggle() }.alert("wow funnyn nice", isPresented: $showAlert){} {self.shouldHide = true })}
                //tried to make a hiding button that appears when youi have 69 clicks that does something idk
                //            Button("click if you have 69 clicks") { showAlert.toggle() }.alert("sssssss", isPresented: $showAlert){} {self.shouldHide = true }
                ////            Button("click if you have 69 clicks", action: if counter == 69 {
                ////                { showAlert.toggle() }.alert("GOODJOB", isPresented: $showAlert){}
                ////                    .buttonStyle(.bordered)
                ////            })
                //            if counter == 69 { showAlert.toggle()}.alert("sssssss", isPresented: $showAlert){}
            }
        }
    }










