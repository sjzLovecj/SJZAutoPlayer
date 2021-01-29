//
//  ContentView.swift
//  SJZAutoPlayer
//
//  Created by SJZ on 2021/1/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            SJZMenuView().frame(width: 150, height: 400)
            
            Text("").frame(width: 2, height: 400).background(Color.gray)
            
            Text("Hello, World!").frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
