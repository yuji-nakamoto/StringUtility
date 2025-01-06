// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct StringUtility {
    public init() {}
    
    /// 文字列を逆順にする
    /// - Parameter text: 入力文字列
    /// - Returns: 逆順にした文字列
    public func reverse(_ text: String) -> String {
        return String(text.reversed())
    }
    
    /// 文字列から空白を除去する
    /// - Parameter text: 入力文字列
    /// - Returns: 空白を除去した文字列
    public func removeWhitespace(_ text: String) -> String {
        return text.replacingOccurrences(of: " ", with: "")
    }
}
