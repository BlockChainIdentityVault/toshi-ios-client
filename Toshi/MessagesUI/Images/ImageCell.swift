import Foundation
import UIKit
import TinyConstraints

class ImageCell: UICollectionViewCell {
    static var reuseIdentifier = "MessageCell"

    lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.setContentCompressionResistancePriority(UILayoutPriorityDefaultLow, for: .vertical)

        return view
    }()

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.contentView.backgroundColor = .clear

        self.contentView.addSubview(self.imageView)
        self.imageView.edges(to: self.contentView)
    }
}
