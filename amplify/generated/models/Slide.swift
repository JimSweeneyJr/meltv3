// swiftlint:disable all
import Amplify
import Foundation

public struct Slide: Model {
  public let id: String
  public var title: String?
  public var blog: String?
  public var link: String?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      title: String? = nil,
      blog: String? = nil,
      link: String? = nil) {
    self.init(id: id,
      title: title,
      blog: blog,
      link: link,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      title: String? = nil,
      blog: String? = nil,
      link: String? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.title = title
      self.blog = blog
      self.link = link
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}