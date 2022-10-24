//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Max Kalganov on 9/19/22.
//

import SwiftUI

struct ContentView: View {
    private var image_names: [String] = ["apple", "star", "cherry"]
    
    @State private var pic1: String = "apple"
    @State private var pic2: String = "star"
    @State private var pic3: String = "cherry"
    
    @State var credit_name: String = "Credit: 0"
    private var credit_name_base: String = "Credit: "
    @State private var credit_value: Int = 0
    private var credit_increment_value: Int = 50
    
    
    
    var body: some View {
        VStack(){
            Text("SwiftUI Slots!").font(.title)
            Spacer()
            Text(credit_name)
            Spacer()
            HStack(){
                Image(pic1).resizable().aspectRatio(contentMode: .fit)
                Image(pic2).resizable().aspectRatio(contentMode: .fit)
                Image(pic3).resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button(action: {
                let pic1_ind: Int = Int.random(in: 0...2)
                let pic2_ind: Int = Int.random(in: 0...2)
                let pic3_ind: Int = Int.random(in: 0...2)
                
                if pic1_ind == pic2_ind && pic2_ind == pic3_ind{
                    credit_value = credit_value + credit_increment_value
                    credit_name = credit_name_base + String(credit_value)
                }
                pic1 = image_names[pic1_ind]
                pic2 = image_names[pic2_ind]
                pic3 = image_names[pic3_ind]
                
            }, label: {
                Text("Spin").font(.caption).fontWeight(.semibold).padding([.top, .bottom], 10).padding([.leading, .trailing], 35).background(.red).cornerRadius(30).foregroundColor(.white)
            })
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
