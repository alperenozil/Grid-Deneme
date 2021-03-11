//
//  SecondViewSelam.swift
//  Grid Deneme
//
//  Created by Necdet Alperen Özil on 9.03.2021.
//

import SwiftUI

struct SecondViewSelam: View {
    var name: String
    var body: some View {
        Text(name)
    }
}

struct SecondViewSelam_Previews: PreviewProvider {
    static var previews: some View {
        SecondViewSelam(name:"")
    }
}
