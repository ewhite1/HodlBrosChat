//
//  LoginView.swift
//  HodlBrosChat
//
//  Created by Edward White on 6/23/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 12) {
                    HStack { Spacer()}
                    Text("Welcome Back")
                        .font(.largeTitle)
                        .bold()
                    Text("Sign in")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                    VStack(spacing: 20) {
                        CustomTextField(imageName: "envelope", placeHolderText: "Email", isSecurField: false, text: $email)
                        CustomTextField(imageName: "lock", placeHolderText: "Password", isSecurField: true, text: $password)
                    }
                    .padding([.top, .horizontal], 32)
                    
                }
                .padding(.leading)
                HStack {
                    Spacer()
                    NavigationLink(
                        destination: Text("Reset Password.."),
                        label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 28)
                        })
                }
                Button(action: {print("handle sign up")}, label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                })
                .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
                
                Spacer()
                
                NavigationLink(
                    destination: RegistrationView()
                        .navigationBarBackButtonHidden(true),
                    label: {
                        HStack{
                            Text("Dont have an account?")
                                .font(.system(size: 14))
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                    })
                    .padding(.bottom, 32)
            }
        }
        .padding(.top, -56)
    }
    
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
