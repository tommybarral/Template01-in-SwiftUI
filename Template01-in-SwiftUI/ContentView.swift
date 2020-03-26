//
//  ContentView.swift
//  Template01-in-SwiftUI
//
//  Created by tommy on 29/02/2020.
//  Copyright © 2020 tommy. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        ZStack {
            Image(K.background)
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image(K.picMyself)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(90)
                        .shadow(radius: 60)
                        .frame(width: 50, height: 50, alignment: .top)
                    Text(K.name)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                Spacer()
                VStack {
                    Text(K.text1)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                    Divider()
                    Text(K.total)
                        .font(.system(size: 28))
                        .foregroundColor(.white)
                }
                Spacer()
                ZStack {
                    HStack {
                        Image(K.img1)
                            .resizable()
                            .frame(width: 140, height: 200, alignment: .center)
                            .cornerRadius(35)
                            .overlay(Text(K.debt)
                                .font(.system(size: 28))
                                .bold()
                                .foregroundColor(.black))
                            .padding()
                        Image(K.img2)
                            .resizable()
                            .frame(width: 140, height: 200, alignment: .center)
                            .cornerRadius(35)
                            .overlay(Text(K.credits)
                                .font(.system(size: 25))
                                .bold()
                                .foregroundColor(.white))
                            .padding()
                    }
                }
                Spacer()
                RoundedRectangle(cornerRadius: 45)
                    .edgesIgnoringSafeArea(.bottom)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
