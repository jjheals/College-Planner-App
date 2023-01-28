//
//  EditButtonDashboard.swift
//  HoyaHacks-2023-College-Planner-App
//
//  Created by Anay Gandhi on 1/27/23.
//

import SwiftUI

struct EditButtonAssignments: View {
    @State private var ShowTextField = false
    @State private var enteredSubject: String = ""
    
    var body: some View {
        if ShowTextField {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 200, height: 100)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .frame(width: 180, height: 80)
                VStack (alignment: .center, spacing: 15) {
                    TextField("Enter Subject", text: $enteredSubject)
                        .multilineTextAlignment(.center)
                    Button(action: {
                        
            // space for json request
                        
                        }, label: {
                            Text("Enter")
                        }
                    )

                }
            }
        }
        
        VStack {
            
            HStack {
                Spacer()
                Button(action: {
                    self.ShowTextField.toggle()
                }) {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.blue)
                        .font(.system(size:48))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                        .padding()
                }
            }
        }
    }
}

struct EditButtonAssignments_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonAssignments()
    }
}