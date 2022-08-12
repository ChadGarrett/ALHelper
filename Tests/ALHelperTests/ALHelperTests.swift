import XCTest
@testable import ALHelper

final class ALHelperTests: XCTestCase {
    
    func testNoConstraintsAddedIfViewIsNotASubview() throws {
        // Given: A child view, with no parent view
        let parentView = UIView()
        let childView = UIView()
        
        // When: Attempting to pin the edges of the child that has not been added as a subview
        childView.pinToSuperviewEdges()
        
        // Then: No constraints should have been added to the parent view
        XCTAssertEqual(parentView.constraints.count, 0)
    }
    
    func testConstraintsAdded() {
        // Given: A simple parent and child view
        let parentView = UIView()
        let childView = UIView()
        parentView.addSubview(childView)
        
        // When: The child is pinned to the parents edges
        childView.pinToSuperviewEdges()
        
        // Then: Expect the parent view to now contain some constraints
        XCTAssertEqual(parentView.constraints.count, 4)
    }
    
    func testDefaultNoInsetsAdded() {
        // Given: A simple parent and child view
        let parentView = UIView()
        let childView = UIView()
        parentView.addSubview(childView)
        
        // When: The child is pinned to the edges of the parent, with no insets specified
        childView.pinToSuperviewEdges()
        
        // Then: Expect no insets to be active on the constraints
        parentView.constraints.forEach { constraint in
            XCTAssertEqual(constraint.constant, 0)
        }
    }
    
    func testInsetsAdded() {
        // Given: A simple parent and child view
        let parentView = UIView()
        let childView = UIView()
        parentView.addSubview(childView)
        
        // When: The child is pinned to the edges of the parent, with a set of insets provided
        let insetConstant: CGFloat = 5
        let insets = UIEdgeInsets(top: insetConstant, left: insetConstant, bottom: insetConstant, right: insetConstant)
        
        childView.pinToSuperviewEdges(with: insets)
        
        // Then: Expect each constraint added to equal the inset that was provided
        parentView.constraints.forEach { constraint in
            XCTAssertEqual(constraint.constant, insetConstant)
        }
    }
    
    func testAddingSubviewAndPinningToSuperviewEdges() {
        // Given: A simple parent and child view
        let parentView = UIView()
        let childView = UIView()
        
        // When: The child view is added and pinned to the parent views edges
        parentView.addSubviewAndPinToSuperviewEdges(childView)
        
        // Then: The parent view has a subview, and constraints to lay it out
        XCTAssertEqual(parentView.subviews.count, 1)
        XCTAssertEqual(parentView.constraints.count, 4)
    }
}
