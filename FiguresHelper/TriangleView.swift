//
//  TriangleView.swift
//  FiguresHelper
//
//  Created by Nicole on 2021/12/1.
//

import SwiftUI

struct TriangleView: View {

        @State var height: Double = 15.00
        @State var b: Double = 15.00
        

        var area: Double {
            return height * b * 0.5
        }
        

       var body: some View {
            VStack(alignment: .leading, spacing: 20) {
                

                Text("height:")
                    .bold()
                
                Group {
                    

                    HStack {
                        Spacer()
                        Text("\(height)")
                            .font(.title2)
                            .bold()
                        Spacer()
                    }
                    

                    Slider(value: $height,
                           in: 0.0...100.0,
                           // step: 1.0, Get 1 more when s
                           label: {
                        Text("Radius")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("100.0")
                    })

                }
                
                Text("Length of Bottom:")
                    .bold()
                
                Group {
                    

                    HStack {
                        Spacer()
                        Text("\(b)")
                            .font(.title2)
                            .bold()
                        Spacer()
                    }
                    

                    Slider(value: $b,
                           in: 0.0...100.0,
                           // step: 1.0, Get 1 more when s
                           label: {
                        Text("Radius")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("100.0")
                    })

                }
                
                            

                Text("Area:")
                    .bold()
                
                Text("\(area) square units")
                    .font(.title2)
                
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("Triangle")
        }
    }

    struct TriangleView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                TriangleView()
            }
        }
    }
