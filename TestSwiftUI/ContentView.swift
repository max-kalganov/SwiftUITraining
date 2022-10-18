//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Max Kalganov on 9/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(){
            ZStack(){
                Image("toronto").resizable().aspectRatio(contentMode: .fit).cornerRadius(15.0)
                VStack(alignment: .center){
                    Text("CN Tower").font(.system(size: 36, weight: .medium))
                    Text("Toronto").font(.system(size: 16, weight: .light, design: .default))
                }.padding().background(.black).cornerRadius(20).opacity(0.8).foregroundColor(.white)
                
            }
            ZStack(){
                Image("london").resizable().aspectRatio(contentMode: .fit).cornerRadius(15.0)
                VStack(){
                    Text("Big Ben").font(.system(size: 36, weight: .medium))
                    Text("London").font(.system(size: 16, weight: .light, design: .default))
                }.padding().background(.black).cornerRadius(20).opacity(0.8).foregroundColor(.white)
                
            }
            
        }.padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
