//
//  Test3.swift
//  TWD
//
//  Created by Halyna on 04/04/2021.
//

import SwiftUI

struct Test3: View {
    @State private var date = Date()
    
    var body: some View {
        ZStack{
            myBackground(ImageBackground: "f3")
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            ).frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}
    struct Test3_Previews: PreviewProvider {
        static var previews: some View {
            Test3()
        }
    }
