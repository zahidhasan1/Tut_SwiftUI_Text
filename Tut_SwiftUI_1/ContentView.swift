//
//  ContentView.swift
//  Tut_SwiftUI_1
//
//  Created by ZEUS on 26/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var password = ""
    @State var someText = "initial text"
    
    var body: some View {
        VStack{

               SecureField("Enter a password", text: $password)
                .padding()
            
            Text("password entered: \(password)")
                .italic()
            
            TextField("Enter some text", text: $someText)
                .padding()
                .multilineTextAlignment(.center)
            Text("\(someText)")
                .font(.largeTitle)
                .underline()

            
            Text("Changing text color and make it bold")
                .foregroundColor(Color.blue)
                .bold()
            
            Text("Use kerning to change space between lines of text")
                .kerning(5)
            
            Text("Changing baseline offset")
                .baselineOffset(100)
            
            Text("Strikethrough")
                .strikethrough()
            
            Text("This is a multi line text implemented in SwiftUI. The Center modifier was added to the text. This text also implements multiple modifiers")
                .bold()
                .background(Color.gray)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
