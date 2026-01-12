import Foundation

struct AvatarModel: Hashable {
  let avatarID: String
  let name: String?
  let profileImage: String?
  let authorID: String?
  let dateCreated: Date?
  let characterOption: CharacterOption?
  let characterAction: CharacterAction?
  let characterLocation: CharacterLocation?

  init(
    avatarID: String,
    profileImage: String? = nil,
    name: String? = nil,
    authorID: String? = nil,
    dateCreated: Date? = nil,
    characterOption: CharacterOption? = nil,
    characterAction: CharacterAction? = nil,
    characterLocation: CharacterLocation? = nil
  ) {
    self.avatarID = avatarID
    self.name = name
    self.profileImage = profileImage
    self.authorID = authorID
    self.dateCreated = dateCreated
    self.characterOption = characterOption
    self.characterAction = characterAction
    self.characterLocation = characterLocation
  }

  var characterDescription: String {
    AvatarDescriptionBuilder(avatarModel: self).characterDescription
  }

  static var mock: AvatarModel {
    mocks[0]
  }

  static var mocks: [AvatarModel] = [
    AvatarModel(
      avatarID: "1", profileImage: "https://picsum.photos/200/300", name: "John Doe", authorID: "1",
      dateCreated: Date(), characterOption: .man, characterAction: .smiling,
      characterLocation: .home
    ),
    AvatarModel(
      avatarID: "2", profileImage: "https://picsum.photos/200/300", name: "Jane Doe", authorID: "2",
      dateCreated: Date(), characterOption: .woman, characterAction: .walking,
      characterLocation: .office
    ),
    AvatarModel(
      avatarID: "3", profileImage: "https://picsum.photos/200/300", name: "Jim Doe", authorID: "3",
      dateCreated: Date(), characterOption: .alien, characterAction: .eating,
      characterLocation: .school
    ),
    AvatarModel(
      avatarID: "4", profileImage: "https://picsum.photos/200/300", name: "Jill Doe", authorID: "4",
      dateCreated: Date(), characterOption: .dog, characterAction: .drinking,
      characterLocation: .park
    ),
    AvatarModel(
      avatarID: "5", profileImage: "https://picsum.photos/200/300", name: "Jack Doe", authorID: "5",
      dateCreated: Date(), characterOption: .cat, characterAction: .shopping,
      characterLocation: .gym
    ),
  ]
}

struct AvatarDescriptionBuilder {
  let characterOption: CharacterOption
  let characterAction: CharacterAction
  let characterLocation: CharacterLocation

  init(
    characterOption: CharacterOption, characterAction: CharacterAction,
    characterLocation: CharacterLocation
  ) {
    self.characterOption = characterOption
    self.characterAction = characterAction
    self.characterLocation = characterLocation
  }

  init(avatarModel: AvatarModel) {
    self.characterOption = avatarModel.characterOption ?? .default
    self.characterAction = avatarModel.characterAction ?? .default
    self.characterLocation = avatarModel.characterLocation ?? .default
  }

  var characterDescription: String {
    "A \(characterOption.rawValue) that is \(characterAction.rawValue) in the \(characterLocation.rawValue)."
  }
}

enum CharacterOption: String {
  case man, woman, alien, dog, cat

  static var `default`: Self {
    .man
  }
}

enum CharacterAction: String {
  case smiling, sitting, eating, drinking, walking, shopping, studying, working, relaxing, fighting,
    crying

  static var `default`: Self {
    .smiling
  }
}

enum CharacterLocation: String {
  case park, gym, restaurant, bar, club, library, museum, home, office, school

  static var `default`: Self {
    .park
  }
}
