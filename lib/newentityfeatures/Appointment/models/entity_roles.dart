enum EntityRoles { Resident, Owner, Staff, Security, Manager }
enum ServiceRoles { Staff, Manager }

extension RolesToString on EntityRoles {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
