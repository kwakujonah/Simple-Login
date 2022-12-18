//
//  LoginView.swift
//  Simple Login
//
//  Created by Kwaku Jonah on 17/12/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var emailId: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                Group {
                    Image("Login")
                        .resizable()
                        .frame(width: 240, height:200)
                        .aspectRatio(contentMode: .fill)
                        .padding([.bottom],0)
                    Text("Login")
                        .font(.system(size: 34, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Group{
                    //            Email TextField
                    HStack(spacing: 8.0){
                        Image(systemName: "person.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                            .foregroundColor(Color.gray)
                        TextField("Email ID", text: $emailId)
                    }
                    .padding([.bottom, .trailing], 14)
                    .overlay(Divider(), alignment: .bottom)
                    Spacer(minLength: 24)
                    //            Password TextField
                    HStack(spacing: 8.0){
                        Image(systemName: "lock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18)
                            .foregroundColor(Color.gray)
                        TextField("Password", text: $password)
                        Button("Forgot?") {
                            
                        }
                    }
                    .padding(.bottom, 14)
                    .overlay(Divider(), alignment: .bottom)
                    Spacer(minLength: 24)
                    Button {
                    } label: {
                        Text("Login")
                            .frame(maxWidth: .infinity)
                    }
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                }
                Group{
                    Spacer(minLength: 28)
                    Text("Or, login with...")
                        .foregroundColor(Color.gray)
                    Spacer(minLength: 24)
                    HStack{
                        Image("google")
                            .resizable()
                        Image("facebook")
                            .resizable()
                        Image("apple")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                Spacer(minLength: 28)
                HStack{
                    Image(systemName: "google")
                }
                NavigationLink(
                    destination: RegisterView(),
                    label: {
                        Text("New to Simple Login? Register")
                            .foregroundColor(Color.blue)
                    }
                ).navigationBarBackButtonHidden(true)
            }
            .padding(38)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
