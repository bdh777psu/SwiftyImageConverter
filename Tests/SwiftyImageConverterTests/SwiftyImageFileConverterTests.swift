import XCTest
import SwiftyImageConverter

final class SwiftyImageFileConverterTests: XCTestCase {
    
    // Arrange
    var sut: SwiftyImageFileConverter!
    let invalidFilePath = "invalid/path/to/file.png"
    let emptyFilePath = ""
    
    override func setUp() {
        super.setUp()
        sut = SwiftyImageFileConverter()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    private func testConvertImageFilesToJpeg_WhenInvalidFilePathsProvided_ShouldNotAttemptConversion() {
        // Act
        let result = sut.convertImageFilesToJpeg(filesPaths: [invalidFilePath, emptyFilePath], compression: .maximum)
        
        // Assert
        XCTAssertEqual(result.count, 0)
    }
    
    private func testConvertImageFilesToPng_WhenInvalidFilePathsProvided_ShouldNotAttemptConversion() {
        // Act
        let result = sut.convertImageFilesToPng(filesPaths: [invalidFilePath, emptyFilePath])
        
        // Assert
        XCTAssertEqual(result.count, 0)
    }
}

