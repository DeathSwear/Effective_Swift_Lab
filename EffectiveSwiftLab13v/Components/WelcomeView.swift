//
//  WelcomeView.swift
//  EffectiveSwiftLab13v
//
//  Created by Владислав on 18.11.2023.
//

import Foundation
import SwiftUI

struct WelcomeView: View {
    
    let user: User = User(imageAvatarName: "avatar", name: "James")
    
    var body: some View {
        HStack{
            VStack (alignment: .leading) {
                Text("Hello,")
                    .font(.custom("t1", size: 16))
                    .foregroundColor(ColorTheme.Text.Secondary)
                Text("Hi " + user.name).font(.custom("t2", size: 20))
            }
            Spacer()
            Image(user.imageAvatarName)
                .resizable()
                .frame(width: 56, height: 56)
                .foregroundColor(ColorTheme.Text.Primary)
            
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
