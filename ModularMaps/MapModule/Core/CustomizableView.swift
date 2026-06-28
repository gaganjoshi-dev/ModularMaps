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
                .foregroundColor(labelColor(for: buttonColor))
                .cornerRadius(8)
                .shadow(radius: 4)
        }
    }

    private func labelColor(for buttonColor: Color) -> Color {
        if buttonColor == .white || buttonColor == .yellow {
            return .primary
        }
        return .white
    }
}
