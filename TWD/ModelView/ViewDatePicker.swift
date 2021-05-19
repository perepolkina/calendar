//
//  ViewDatePicker.swift
//  TWD
//
//  Created by Halyna on 04/04/2021.
//

import SwiftUI

struct ViewDatePicker2: View {
    @State var showDatePicker: Bool
    @State var savedDate: Date? = nil
    
    var body: some View {
        HStack{
            Button(action: {
                showDatePicker.toggle()
            }, label: {
                Text("Selected Date: \(savedDate ?? Date(),style: .date)")
                    .foregroundColor(.black)
                
            })
        }
        if showDatePicker {
            ZStack{myBackground(ImageBackground: "f3")
                DatePickerWithButtons(showDatePicker: $showDatePicker, savedDate: $savedDate, selectedDate: savedDate ?? Date())
                    .animation(.linear)
                    .transition(.opacity)
            }
        }
    }
}

struct DatePickerWithButtons: View {
    @Binding var showDatePicker: Bool
    @Binding var savedDate: Date?
    @State var selectedDate: Date = Date()
    
    var body: some View {
        ZStack {
            
            //       Color.black.opacity(0.3)
            //          .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                DatePicker("Test", selection: $selectedDate, displayedComponents: [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                Divider()
                HStack {
                    
                    Button(action: {
                        showDatePicker = false
                    }, label: {
                        Spacer()
                        Text("Cancel")
                            .foregroundColor(.black)
                        
                    })
                    
                    Spacer(minLength: 200)
                    
                    Button(action: {
                        savedDate = selectedDate
                        showDatePicker = false
                    }, label: {
                        Text("Save")
                            //.bold()
                            .foregroundColor(.black)
                        Spacer()
                    })
                    
                }
                .padding(.horizontal)
                
            }
            .padding()
            .background(
                Color.white
                    .cornerRadius(30)
            )
            
            
        }
        
    }
}



