// swiftlint:disable all
import Amplify
import Foundation

extension Slide {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case title
    case blog
    case link
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let slide = Slide.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Slides"
    
    model.attributes(
      .primaryKey(fields: [slide.id])
    )
    
    model.fields(
      .field(slide.id, is: .required, ofType: .string),
      .field(slide.title, is: .optional, ofType: .string),
      .field(slide.blog, is: .optional, ofType: .string),
      .field(slide.link, is: .optional, ofType: .string),
      .field(slide.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(slide.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}

extension Slide: ModelIdentifiable {
  public typealias IdentifierFormat = ModelIdentifierFormat.Default
  public typealias IdentifierProtocol = DefaultModelIdentifier<Self>
}