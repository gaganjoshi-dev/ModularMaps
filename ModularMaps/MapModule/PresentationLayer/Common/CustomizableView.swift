import SwiftUI

protocol CustomizableView {
    var backgroundColor: Color { get }
    var buttonPadding: CGFloat { get }
    var buttonColor: Color { get }
}

extension CustomizableView {
    var backgroundColor: Color { .white }
    var buttonPadding: CGFloat { 10 }
    var buttonColor: Color { .blue }

    func defaultButton(title: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(title)
                .padding(buttonPadding)
                .background(buttonColor)
                .foregroundStyle(buttonColor == .white || buttonColor == .yellow ? Color.primary : Color.white)
                .cornerRadius(8)
                .shadow(radius: 4)
        }
    }
}
