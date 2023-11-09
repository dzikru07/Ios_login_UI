//
//  ContentView.swift
//  first_project
//
//  Created by dzikru arya on 09/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg").resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing:50){
                Logo()
                FormBox()
            }.padding()
        }
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world! 2").foregroundColor(.white).background(.red)
       
     
    }
}

struct Logo: View {
    var body: some View {
        VStack{
            Image("logo").resizable().frame(width: 100, height: 100).background(Color("warnaku")).foregroundColor(.white)
                .padding()
                .background(Color("warnaku"))
                .cornerRadius(20)
            
            Text("Login").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 40)).foregroundColor(.white)
        }
    }
}

struct FormBox: View {
    @State var username:String = ""
    @State var password:String = ""
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Username").font(.callout).bold().foregroundColor(.white)
            
            TextField("Username Anda", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold().foregroundColor(.white)
            
            SecureField("Password Anda", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("press button")}){
                Spacer()
                Text("Sign In")
                Spacer()
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            .foregroundColor(.white)
        }.padding(.all, 30)
            .background(Color.gray.opacity(0.4))
            .cornerRadius(30)
    }
}

#Preview {
    ContentView()
}
