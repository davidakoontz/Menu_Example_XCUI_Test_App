//
//  ContentView.swift
//  Menu_Example_Test
//
//  Created by David on 2/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            
            Menu("Edit Menu (Pop-up)") {
                Button(action: {print("menu button Add color pressed")}) {
                    Text("Add color")
                        .accessibility(identifier: "color_str")     // do NOT work - see print(app.debugDescription)
                    Image(systemName: "eyedropper.full")
                        .accessibility(identifier: "eyedropper")     // do NOT work - see print(app.debugDescription)
                }
                .accessibility(identifier: "color_ID")
                Button(action: {print("menu button Change contrast pressed")}) {
                    Image(systemName: "circle.lefthalf.fill")   // image location is always on right
                        .foregroundColor(.blue)     // no effect !
                    Text("Change contrast")
                }
                .accessibility(identifier: "contrast_ID")
            }
            .accessibility(identifier: "popup")
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
