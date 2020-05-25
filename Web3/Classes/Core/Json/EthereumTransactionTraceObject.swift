import Foundation

public struct EthereumTransactionTraceObject: Codable {
    public let gas: UInt

    public let returnValue: EthereumValue

    public let structLogs: [EthereumStructLogEntry]
}

public struct EthereumStructLogEntry: Codable {
    public let depth: UInt

    public let pc: UInt

    public let op: String

    public let gas: UInt

    public let gasCost: UInt

    public let memory: [EthereumValue]?

    public let stack: [EthereumValue]?

    public let storage: [String:EthereumValue]?
}
