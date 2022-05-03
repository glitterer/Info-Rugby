//
//  FilterViewModel.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

enum FilterViewModel: Int, CaseIterable {
    case general
    case tagtouch
    
    var title: String {
        switch self{
        case .general: return "general"
        case .tagtouch: return "tagtouch"
        }
    }
}
