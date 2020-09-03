
import SwiftUI

struct SwipeGesture: UIViewRepresentable {
    
    var currentPage = 0
    
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
            print("Hacia la izquierda")
        }
        
        @objc func swipeToRight () {
            print("Hacia la derecha")
        }
    }
    
}
