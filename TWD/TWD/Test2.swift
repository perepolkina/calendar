//
//  Test2.swift
//  TWD
//
//  Created by Halyna on 03/04/2021.
//

import SwiftUI

struct Test2: View {
    
    @State var date = Date()
    
    @State private var Day1 = 1
    @State private var Day2 = 1
    @State var showDatePicker = false
    @State var savedDate: Date? = nil
    
    var body: some View {
        
        NavigationView {
            ZStack{
                myBackground(ImageBackground: "f3")
           
            Form {
                
                
                Picker("cycle duration", selection: $Day1) {
                    ForEach(1 ..< 100) { number in
                        Text("\(number) days")
                    }
                }
                Picker("period duration ", selection: $Day2) {
                    ForEach(1 ..< 100) { number in
                        Text("\(number) days")
                    }
                }
                
                
               /* Button(action: {
                    //showDatePicker.toggle()
                    showDatePicker = true
                }, label: {
                    Text("Selected Date: \(savedDate ?? Date(),style: .date)")
                        .foregroundColor(.black)
                    
                })
                if showDatePicker {
                    ZStack{
                        myBackground(ImageBackground: "f3")
                        DatePickerWithButtons(showDatePicker: $showDatePicker, savedDate: $savedDate, selectedDate: savedDate ?? Date())
                            .animation(.linear)
                            .transition(.opacity)
            }
            
                }*/
            }.frame(width: 350, height: 120, alignment: .center)
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
        }
    }
}
}
struct Test2_Previews: PreviewProvider {
    static var previews: some View {
        Test2()
    }
}

