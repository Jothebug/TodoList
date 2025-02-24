//
//  ItemModel.swift
//  TodoList
//
//  Created by HaYen on 24/2/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
