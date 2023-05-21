// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "20a4949284711abc55c5a6c5fbd8aaed"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Slide.self)
  }
}