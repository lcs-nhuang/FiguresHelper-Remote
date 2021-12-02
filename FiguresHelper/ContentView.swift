//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Nicole on 2021/12/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 15){
            
            Text("Radius")
                .bold()
            
            HStack{
                Spacer()
            Text("35.0")
                Spacer()
                
            }
            
            Slider(value: .constant(50.0),
                   in: 0.0...100.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
            
            Text("Area")
            
            Text("7.89 square units")
            
       Spacer()
        }
        navigationTitle("Circle")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
        }
    }
}
