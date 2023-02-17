//
//  Wrappers.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 13.02.23.
//
import UIKit

@propertyWrapper
public struct UseAutoLayout<T: UIView> {
    public var wrappedValue: T {
        didSet {
            setAutoLayout()
        }
    }

    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        setAutoLayout()
    }

    func setAutoLayout() {
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}
