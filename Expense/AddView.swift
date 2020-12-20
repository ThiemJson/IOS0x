//
//  AddView.swift
//  Expense
//
//  Created by Thiem Jason on 12/20/20.
//

import SwiftUI

struct AddView: View {	
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.trailing)
            .lineLimit(4)
            .padding(.all, 10.0)
            .actionSheet(isPresented: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is Presented@*/.constant(false)/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/ActionSheet(title: Text("Action Sheet"))/*@END_MENU_TOKEN@*/
            }
            
            
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
