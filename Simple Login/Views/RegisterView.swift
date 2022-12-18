//
//  RegisterView.swift
//  Simple Login
//
//  Created by Kwaku Jonah on 18/12/2022.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var emailId: String = ""
    @State private var password: String = ""
    @State private var fullName: String = ""
    @State private var company: String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                Group {
                    Image("Sign Up")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding([.bottom],0)
                    Text("Sign Up")
                        .font(.system(size: 34, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Group{
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
                    Spacer(minLength: 28)
                    Text("Or, register with email...")
                        .foregroundColor(Color.gray)
                }
                Group{
                    Spacer(minLength: 24)
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
                    HStack(spacing: 8.0){
                        Image(systemName: "lock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                            .foregroundColor(Color.gray)
                        TextField("Password", text: $emailId)
                    }
                    .padding([.bottom, .trailing], 14)
                    .overlay(Divider(), alignment: .bottom)
                    Spacer(minLength: 24)
                    HStack(spacing: 8.0){
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                            .foregroundColor(Color.gray)
                        TextField("Full Name", text: $fullName)
                    }
                    .padding([.bottom, .trailing], 14)
                    .overlay(Divider(), alignment: .bottom)
                    Spacer(minLength: 24)
                    HStack(spacing: 8.0){
                        Image(systemName: "person.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                            .foregroundColor(Color.gray)
                        TextField("Company Name", text: $emailId)
                    }
                    .padding([.bottom, .trailing], 14)
                    .overlay(Divider(), alignment: .bottom)
                }
                Group{
                    Spacer(minLength: 24)
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .frame(maxWidth: .infinity)
                    }
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    Spacer(minLength: 24)
                    NavigationLink(
                        destination: LoginView(),
                        label:{
                            Text("Already Have An Account? Log In")
                        }
                    ).navigationBarBackButtonHidden(true)
                }
            }
            .padding(38)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
