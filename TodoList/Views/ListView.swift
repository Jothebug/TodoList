//
//  ListView.swift
//  TodoList
//
//  Created by HaYen on 24/2/25.
//

import SwiftUI

struct ListView: View {
    
    @State var  items: [ItemModel] = [
        ItemModel(title: "The first item ", isCompleted: false),
        ItemModel(title: "The second item", isCompleted: false),
        ItemModel(title: "The third item", isCompleted: true)
    ];
    
    var body: some View {
        List {
            ForEach(items) {
                ListRowView(item: $0)
            }

        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 🍀")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
