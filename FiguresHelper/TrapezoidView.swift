//
//  TrapezoidView.swift
//  FiguresHelper
//
//  Created by Nicole on 2021/12/1.
//

import SwiftUI

struct TrapezoidView: View {
    
    @state var a : Double = 15
    @state var b : Double = 15
    @state var h : Double = 15
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
            }
            
            
            
            Text("Length of b:")
                 .bold()
            
             Group{
                 
                 HStack{
                     Spacer()
                     Text("\(b)")
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
             }
            
            
            
            Text("Heigh:")
                 .bold()
            
             Group{
                 
                 HStack{
                     Spacer()
                     Text("\(h)")
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
             }
            
            Text("Area")
                .bold()
            
            Text("760 Square Units")
            
            
          
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
