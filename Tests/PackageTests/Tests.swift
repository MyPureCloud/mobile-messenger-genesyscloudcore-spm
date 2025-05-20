import XCTest
import GenesysCloudCore

final class PackageTests: XCTestCase {
    func testImport() {
        XCTAssertNotNil(GenesysCloudCore.Account.self)
    }
}
