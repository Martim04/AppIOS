//
//  ContentView.swift
//  testeapp
//
//  Created by Martim Araújo on 26/04/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    let emojis: [String] = ["👾","🎃","🤖","☠️","👺","👽","😈","💩","🤡","😻","👻","👹"]
    
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack{
            HStack{
                ForEach(0..<cardCount, id: \.self){index in
                    CardView(content: emojis[index])
                    
                }
            }
            .foregroundColor(.yellow)

                HStack{
                    
                    Button("Remove card"){
                        cardCount -= 1
                    }
                    Spacer()
                    Button("Add card"){
                        
                        cardCount += 1
                    }
                }
            }
            
            .padding()
            
        }
    }

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack{
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 4)
                Text(content).font(.largeTitle)
            }else{
                base.fill()
                
            }
            
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
    
 
