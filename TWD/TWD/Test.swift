//
//  Test.swift
//  TWD
//
//  Created by Halyna on 30/03/2021.
//
import Foundation
import SwiftUI
import UIKit

struct Test: View {
    @State var showDatePicker: Bool
    @State var savedDate: Date? = nil
    @State private var date = Date()
    @State private var Day1 = 1
    @State private var Day2 = 1
    
    var body: some View {
        NavigationView {
            ZStack{
                myBackground(ImageBackground: "f3")
                VStack{
                    
                    DatePicker("Staet date", selection: $date, displayedComponents: [.date])
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .background(Color.white.opacity(0.3))
                    Spacer()
                    
                   /* Button(action: {
                        showDatePicker.toggle()
                    }, label: {
                        Text("Selected Date: \(savedDate ?? Date(),style: .date)")
                            .foregroundColor(.black)
                        
                    })*/
                    Form {
                        
                        
                        Picker("cycle duration", selection: $Day1) {
                            ForEach(1 ..< 100) { number in
                                Text("\(number) days")
                                    .foregroundColor(.black)
                            }
                        }
                        Picker("period duration ", selection: $Day2) {
                            ForEach(1 ..< 100) { number in
                                Text("\(number) days")
                                    .foregroundColor(.black)
                            }
                        }
                        
                        
                      Button(action: {
                         //showDatePicker.toggle()
                         showDatePicker = true
                         }, label: {
                         Text("Selected Date:           \(savedDate ?? Date(),style: .date)")
                         .foregroundColor(.black)
                         
                         })
                         if showDatePicker {
                         ZStack{
                         myBackground(ImageBackground: "f3")
                         DatePickerWithButtons(showDatePicker: $showDatePicker, savedDate: $savedDate, selectedDate: savedDate ?? Date())
                         .animation(.linear)
                         .transition(.opacity)
                         }
                         
                         }
                    }.frame(width: 350, height: 190, alignment: .center)
                    .opacity(0.8)
                    Spacer()
                }
                if showDatePicker {
                    ZStack{
                        myBackground(ImageBackground: "f3")
                        DatePickerWithButtons(showDatePicker: $showDatePicker, savedDate: $savedDate, selectedDate: savedDate ?? Date())
                            .animation(.linear)
                            .transition(.opacity)
                    }
                }
            }
        }
    }
}
struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test(showDatePicker: false)
    }
}
