//
//  OtherStruct.swift
//  TWD
//
//  Created by Halyna on 03/04/2021.
//

import SwiftUI

struct myBackground: View {
    let ImageBackground: String
    var body: some View {
        ZStack{
            Image(ImageBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
        }
    }
}
