//
//  NumberFactClient.swift
//
//  
//  Created by penguinsan on 2023/12/29
//  
//

import ComposableArchitecture
import Foundation

struct NumberFactClient {

    var fetch: (Int) async throws -> String
}
