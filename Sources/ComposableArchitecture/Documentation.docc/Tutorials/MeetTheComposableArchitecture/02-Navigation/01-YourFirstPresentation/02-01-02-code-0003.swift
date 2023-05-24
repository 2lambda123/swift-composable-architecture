struct ContactsFeature: ReducerProtocol {
  struct State: Equatable {
    @PresentationState var addContact: AddContactFeature.State?
    var contacts: IdentifiedArrayOf<Contact> = []
  }
  enum Action {
    case addButtonTapped
    case addContact(PresentationAction<AddContactFeature.Action>)
  }
  var body: some ReducerProtocolOf<Self> {
    Reduce { state, action in
      switch action {
      case .addButtonTapped:
        // TODO
        return .none

      case .addContact:
        return .none
      }
    }
  }
}