//
//  InfoView.swift
//  My VCard
//
//  Created by Kelvin Ricafort on 9/26/23.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                    .foregroundColor(Color("Info Color"))
            })
            .padding(.all)
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
