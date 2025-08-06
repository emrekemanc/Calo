//
//  SplashScreenView.swift
//  Calo
//
//  Created by Muhammet Emre Kemancı on 6.08.2025.
//

import SwiftUI

struct SplashScreenView: View{
    @State var isActive = false
    var body: some View {
        if isActive{
            ContentView()
        }else{
            VStack{
                Text("HOŞ GELDİN")
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                    withAnimation{
                        isActive = true
                    }
                }
            }
        }
    }
}
#Preview {
    SplashScreenView()
}
