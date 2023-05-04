import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State var showAlert = false
    @State var shouldHide = false
    var body: some View {
        VStack {
            Image("cookie3")
            Text("total clicks = \(counter)")
                .font(.largeTitle)
                .foregroundColor(.green)
            Text("Test")
            HStack{
                Button(action: {counter += 1}, label: {
                    Text("click here to generate clicks")
                        .foregroundColor(.blue)
                })
                Button(action: {counter -= 50}, label: {
                    Text("UPGRADE!")
                        .foregroundColor(.red)
                        .font(.title2)
                        .buttonStyle(.bordered)
                        .hidden()
                })
            }
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










