
import SwiftUI

@main
struct Beta26Demo2App: App {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = .yellow
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some Scene {
        WindowGroup {
            UIAppearanceUsage()
        }
    }
}



struct UIAppearanceUsage: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {
                Child1View()
            }, label: {
                Text("To View 1")
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow.opacity(0.1))
            .navigationTitle("Main")
        }
        
    }
}


private struct Child1View: View {
    var body: some View {
        NavigationLink(destination: {
            Child2View()
        }, label: {
            Text("To view 2")
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.yellow.opacity(0.1))
        .navigationTitle("View 1")
        
    }
}


private struct Child2View: View {
    var body: some View {
        Text("Some other stuff")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow.opacity(0.1))
            .navigationTitle("View 2")
    }
}
