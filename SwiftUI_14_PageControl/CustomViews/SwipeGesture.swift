
import SwiftUI

struct SwipeGesture: UIViewRepresentable {
    
    @Binding var currentPage: Int
    
    func makeCoordinator() -> Coordinator {
        return SwipeGesture.Coordinator(connection: self)
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        
        let leftSwipeGestureRecognizer = UISwipeGestureRecognizer(target: context.coordinator, action: #selector(context.coordinator.swipeToLeft))
        leftSwipeGestureRecognizer.direction = .left

        let rightSwipeGestureRecognizer = UISwipeGestureRecognizer(target: context.coordinator, action: #selector(context.coordinator.swipeToRight))
        rightSwipeGestureRecognizer.direction = .right

        view.addGestureRecognizer(leftSwipeGestureRecognizer)
        view.addGestureRecognizer(rightSwipeGestureRecognizer)

        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    class Coordinator: NSObject {
        var connection: SwipeGesture
        init(connection: SwipeGesture) {
            self.connection = connection
        }
        
        @objc func swipeToLeft () {
            if self.connection.currentPage < 2 {
                self.connection.currentPage += 1
            }
        }
        
        @objc func swipeToRight () {            
            if self.connection.currentPage != 0 {
                self.connection.currentPage -= 1
            }
        }
    }
    
}
