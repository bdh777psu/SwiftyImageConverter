import Foundation
import UIKit

/// The quality of the resulting JPEG image, expressed as a value from 0.0 to 1.0. The value 0.0 represents the maximum compression (or lowest quality) while the value 1.0 represents the least compression (or best quality).
public enum Compression: Double {
    case maximum = 0.0
    case high = 0.25
    case medium = 0.5
    case low = 0.75
    case least = 1.0
}

public struct SwiftyImageFileConverter {
    
    public init() {}
    
    /// Converts assorted image files at given path to JPEG data
    /// - Parameters:
    ///   - filePaths: Array of image file paths
    ///   - compression: Compression quality
    /// - Returns: Images JPEG data representation
    public func convertImageFilesToJpeg(filesPaths: [String], compression: Compression) -> [Data] {
        let images = filesPaths.compactMap { UIImage(contentsOfFile: $0) }
        
        return images.compactMap { $0.jpegData(compressionQuality: compression.rawValue) }
    }
    
    /// Converts assorted image files at given path to PNG data
    /// - Parameters:
    /// - filePaths: Array of image file paths
    /// - Returns: Images PNG data representation
    public func convertImageFilesToPng(filesPaths: [String]) -> [Data] {
        let images = filesPaths.compactMap { UIImage(contentsOfFile: $0) }
        
        return images.compactMap { $0.pngData() }
    }
}
