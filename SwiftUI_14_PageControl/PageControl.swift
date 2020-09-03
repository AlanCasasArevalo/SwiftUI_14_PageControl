
import SwiftUI

struct PageControl: UIViewRepresentable {
    
    var currentPage = 0
    
    
    func makeUIView(context: Context) -> UIPageControl {
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = .blue
        pageControl.pageIndicatorTintColor = .darkGray
        pageControl.numberOfPages = 3        
        return pageControl
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
}
