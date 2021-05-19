//
//  FirstPage.swift
//  TWD
//
//  Created by Halyna on 25/03/2021.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
      Image("b3")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .edgesIgnoringSafeArea(.all)
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
