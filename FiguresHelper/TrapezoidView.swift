//
//  TrapezoidView.swift
//  FiguresHelper
//
//  Created by Nicole on 2021/12/1.
//

import SwiftUI

struct TrapezoidView: View {
    
    @State var a : Double = 15.0
    @State var b : Double = 15.0
    @State var h : Double = 15.0
    
    var area : Double {
        return (a + b) * h * 0.5
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            
            
           Text("Length of a:")
                .bold()
           
            Group{
                
                HStack{
                    Spacer()
                    Text("\(a)")
                    Spacer()
                }
                
                Slider(value: $a,
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
            }
            
            
            
            Text("Length of b:")
                 .bold()
            
             Group{
                 
                 HStack{
                     Spacer()
                     Text("\(b)")
                     Spacer()
                 }
                 
                 Slider(value: $b,
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
             }
            
            
            
            Text("Heigh:")
                 .bold()
            
             Group{
                 
                 HStack{
                     Spacer()
                     Text("\(h)")
                     Spacer()
                 }
                 
                 Slider(value: $h,
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
             }
            
            Text("Area")
                .bold()
            
            Text("\(area) square units")
            
            
          
            Spacer()
        }
        .navigationTitle("Trapezoid")
        .padding()
    }
}

struct TrapezoidView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        TrapezoidView()
        }
    }
}
