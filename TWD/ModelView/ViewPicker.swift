//
//  ViewPicker.swift
//  TWD
//
//  Created by Halyna on 03/04/2021.
//

import SwiftUI

struct ViewPicker: View {
    @State private var selected = 25
    @State private var expand = false
    var body: some View {
        VStack {
            Button(action: {
                self.expand.toggle()
            }, label: {
                Text("cycle duration                                \(selected)")
                    .font(.title2)
                    //.background(Color.white.opacity(0.8))
                    .frame(width: 350, height: 50, alignment: .center)
                    .foregroundColor(.black)
                    .cornerRadius(15)
            })
            if expand {
                ZStack{
                    myBackground(ImageBackground: "f3")
                    Picker("Choose amount of days", selection: $selected) {
                        ForEach(0..<61) {
                            Text("\($0)")
                        }
                    }
                    .labelsHidden()
                    
                    .overlay(
                        GeometryReader { gp in
                            VStack {
                                Button(action: {
                                    self.expand.toggle()
                                }) {
                                    Text("Ok")
                                        .font(.system(size: 24))
                                        .foregroundColor(.gray)
                                        .padding(.vertical)
                                        .frame(width: gp.size.width,alignment: .center)
                                }.background(Color.white)
                                Spacer()
                            }
                        }
                    )
                }
                
            }
        }
    }
}
struct ViewPicker2: View {
    @State private var selected = 4
    @State private var expand = false
    var body: some View {
        VStack {
            Button(action: {
                self.expand.toggle()
            }, label: {
                Text("period duration                                \(selected)")
                    .font(.title2)
                    //.background(Color.white.opacity(0.8))
                    .foregroundColor(.black)
                    .frame(width: 350, height: 50, alignment: .center)
                    .cornerRadius(15)
            })
            if expand {
                ZStack{
                    myBackground(ImageBackground: "f3")
                    Picker("Choose amount of days", selection: $selected) {
                        ForEach(0..<61) {
                            Text("\($0)")
                        }
                    }
                    .labelsHidden()
                    
                    .overlay(
                        GeometryReader { gp in
                            VStack {
                                Button(action: {
                                    self.expand.toggle()
                                }) {
                                    Text("Ok")
                                        .font(.system(size: 24))
                                        .foregroundColor(.gray)
                                        .padding(.vertical)
                                        .frame(width: gp.size.width,alignment: .center)
                                }.background(Color.white)
                                .frame(width: 350, height: 50, alignment: .center)
                                Spacer()
                            }
                        }
                    )
                }
                
            }
        }
    }
}

