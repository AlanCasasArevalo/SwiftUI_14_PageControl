
import SwiftUI

struct ContentView: View {
    
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            
            ZStack {
                if self.currentPage == 0 {
                    Page1()
                } else if self.currentPage == 1 {
                    Page2()
                } else if self.currentPage == 2 {
                    Page3()
                }
            }
            
            PageControl(currentPage: 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
