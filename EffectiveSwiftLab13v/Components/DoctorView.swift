//
//  DoctorView.swift
//  EffectiveSwiftLab13v
//
//  Created by Владислав on 19.11.2023.
//

import Foundation
import SwiftUI

struct DoctorView: View {
    var doctor: Doctor
    
    var body: some View {
        
        VStack{
            HStack{
                Image(doctor.imageName)
                    .resizable()
                    .frame(width: 48, height: 48)
                VStack (alignment: .leading) {
                    Text(doctor.name)
                        .font(.custom("t10", size: 16))
                        .foregroundColor(ColorTheme.Text.Primary)
                    Text(doctor.specialization)
                        .font(.custom("t11", size: 14))
                        .foregroundColor(ColorTheme.Text.Secondary)
                }
                Spacer()
                Image("location")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .colorMultiply(ColorTheme.Text.Secondary)
                Text(String(doctor.distance) + " KM")
                    .font(.custom("t12", size: 14))
                    .foregroundColor(ColorTheme.Text.Secondary)
            }
            Divider().frame(height: 20)
            HStack{
                Image("clock")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .colorMultiply(ColorTheme.Text.Yellow)
                Text(String(doctor.mark) + " (" + String(doctor.reviewsCount) + " Reviews)")
                    .font(.custom("t13", size: 12))
                    .foregroundColor(ColorTheme.Text.Yellow)
                Spacer()
                Image("clock")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .colorMultiply(ColorTheme.Primary)
                Text("Open at " + doctor.openAtTime)
                    .font(.custom("t14", size: 12))
                    .foregroundColor(ColorTheme.Primary)
                Spacer()
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .background(ColorTheme.BG.Background)
        .cornerRadius(12)
        .shadow(color: ColorTheme.Text.Secondary.opacity(0.04), radius: 10, x: 2, y: 12)
    }
        
}
