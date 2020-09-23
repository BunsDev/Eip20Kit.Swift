import BigInt
import ObjectMapper

struct HexIntTransform: TransformType {

    func transformFromJSON(_ value: Any?) -> Int? {
        guard let hexString = value as? String else {
            return nil
        }

        return Int(hexString.stripHexPrefix(), radix: 16)
    }

    func transformToJSON(_ value: Int?) -> String? {
        fatalError("transformToJSON(_:) has not been implemented")
    }

}

struct HexDataTransform: TransformType {

    func transformFromJSON(_ value: Any?) -> Data? {
        guard let hexString = value as? String else {
            return nil
        }

        return Data(hex: hexString)
    }

    func transformToJSON(_ value: Data?) -> String? {
        fatalError("transformToJSON(_:) has not been implemented")
    }

}

struct HexBigUIntTransform: TransformType {

    func transformFromJSON(_ value: Any?) -> BigUInt? {
        guard let hexString = value as? String else {
            return nil
        }

        return BigUInt(hexString.stripHexPrefix(), radix: 16)
    }

    func transformToJSON(_ value: BigUInt?) -> String? {
        fatalError("transformToJSON(_:) has not been implemented")
    }

}
