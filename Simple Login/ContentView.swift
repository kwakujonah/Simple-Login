//
//  ContentView.swift
//  Simple Login
//
//  Created by Kwaku Jonah on 17/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
