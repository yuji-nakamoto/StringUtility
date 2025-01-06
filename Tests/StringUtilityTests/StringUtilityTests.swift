import Testing
import XCTest
@testable import StringUtility

final class StringUtilityTests: XCTestCase {
    var sut: StringUtility!
    
    override func setUp() async throws {
        sut = StringUtility()
    }
    
    override func tearDown() async throws {
        sut = nil
    }
    
    func test_reverse_正常系() async throws {
        // Given
        let input = "hello"
        let expected = "olleh"
        
        // When
        let result = sut.reverse(input)
        
        // Then
        XCTAssertEqual(result, expected)
    }
    
    func test_reverse_空文字列() async throws {
        // Given
        let input = ""
        let expected = ""
        
        // When
        let result = sut.reverse(input)
        
        // Then
        XCTAssertEqual(result, expected)
    }
    
    func test_removeWhitespace_正常系() async throws {
        // Given
        let input = "hello world"
        let expected = "helloworld"
        
        // When
        let result = sut.removeWhitespace(input)
        
        // Then
        XCTAssertEqual(result, expected)
    }
    
    func test_removeWhitespace_空白のみ() async throws {
        // Given
        let input = "   "
        let expected = ""
        
        // When
        let result = sut.removeWhitespace(input)
        
        // Then
        XCTAssertEqual(result, expected)
    }
}
