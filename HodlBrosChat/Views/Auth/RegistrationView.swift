//
//  RegistrationView.swift
//  HodlBrosChat
//
//  Created by Edward White on 6/23/21.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var fullName = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 12) {
                    HStack { Spacer() }
                    Text("Get Started")
                        .font(.largeTitle)
                        .bold()
                    Text("Create your account")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.green)
                        
                    
                    VStack(spacing: 32) {
                        CustomTextField(imageName: "envelope",
                                        placeHolderText: "Email",
                                        isSecurField: false,
                                        text: $email)
                        CustomTextField(imageName: "person",
                                        placeHolderText: "Username",
                                        isSecurField: true,
                                        text: $username)
                        CustomTextField(imageName: "person",
                                        placeHolderText: "full name",
                                        isSecurField: false,
                                        text: $fullName)
                        CustomTextField(imageName: "lock",
                                        placeHolderText: "Password",
                                        isSecurField: true,
                                        text: $password)
                    }
                    .padding([.top, .horizontal], 32)
                    
                }
                .padding(.leading)
              
                
                Button(action: {print("handle sign up")}, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.green)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                })
                .padding(.top, 24)
                .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
                
                Spacer()
                Button(action:{ mode.wrappedValue.dismiss() }, label: {
                    HStack{
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    
                })
                .padding(.bottom, 32)
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
