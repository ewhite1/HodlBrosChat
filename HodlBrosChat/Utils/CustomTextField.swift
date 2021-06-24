//
//  CustomTextField.swift
//  HodlBrosChat
//
//  Created by Edward White on 6/23/21.
//

import SwiftUI

struct CustomTextField: View {
    let imageName: String
    let placeHolderText: String
    let isSecurField: Bool
    @Binding var text: String
    
    var body: some View {
        VStack(spacing: 16){
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                if isSecurField {
                    SecureField(placeHolderText, text: $text)
                } else {
                    TextField(placeHolderText, text: $text)
                }
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}



