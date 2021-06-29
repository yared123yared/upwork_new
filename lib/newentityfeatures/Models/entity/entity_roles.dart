enum EntityRoles {
  Staff,
  Manager,
  Instructor,
  InstructionManager,
  FeeManager,
  Resident,
  Owner,
  Security,
}

extension RolesToString on EntityRoles {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
