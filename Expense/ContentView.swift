//
//  ContentView.swift
//  Expense
//
//  Created by Thiem Jason on 12/20/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var expenses = Expenses()
    @State private var isPresent = false
    var body: some View {
        NavigationView{
            List{
                ForEach(expenses.items, id: \.name ){
                    item in Text(item.name)
                }
                .onDelete(perform: self.removeItems)
            }
            .navigationTitle("iExpense")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        let expense = ExpenseItem(name: "Nguyencaothiem", type: "thiem", amount: 12)
                                        self.expenses.items.append(expense)
                                    }){
                                        Image(systemName: "plus")
                                    }
                .alert(isPresented: $isPresent) {
                    Alert(title: Text("Nothing"))
                }
                                    .sheet(isPresented: /*@PLACEHOLDER=Is Presented@*/.constant(false)) {
                                        Text("NguyenCaoThiem")
                                            .multilineTextAlignment(.center)
                                    }
            )
        }
    }
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}


class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}

// TODO
struct ExpenseItem {
    let name: String
    let type: String
    let amount: Int
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
