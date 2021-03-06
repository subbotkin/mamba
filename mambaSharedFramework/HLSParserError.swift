//
//  HLSParserError.swift
//  mamba
//
//  Created by Andrew Morrow on 3/29/17.
//  Copyright © 2017 Comcast Cable Communications Management, LLC
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

public enum HLSParserError: Error {
    case missingTagData(description: String)
    case missingTagDataForEXTINF(description: String)
    case malformedHLSTag(tag: String, tagBody: String?)
    case mismatchBetweenTagDescriptorAndTagData(description: String)
    case timedOut
    case unknown(description: String)
}

/// This enum is present to share error codes between the C Rapid Parser layer and
/// the Swift HLSParser layer.
@objc public enum HLSParserInternalErrorCode: Int {
    case missingTagData = 101
    case missingTagDataForEXTINF = 102
}
