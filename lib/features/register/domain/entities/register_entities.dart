import 'package:valecandss/features/register/infraestructure/inputs/register_inputs.dart';

// class UserAccount {
//   final int id;
//   final Name name;
//   final LastName lastName;
//   final Gender gender;
//   final Birthdate birthdate;
//   final int diabetes;
//   final bool insulin;
//   final bool tablets;

//   UserAccount({
//     required this.id,
//     required this.name,
//     required this.lastName,
//     required this.gender,
//     required this.birthdate,
//     required this.diabetes,
//     required this.insulin,
//     required this.tablets,
//   });

//   UserAccount copyWith({
//     Name? name,
//     LastName? lastName,
//     Gender? gender,
//     Birthdate? birthdate,
//     int? diabetes,
//     bool? insulin,
//     bool? tablets,
//   }) =>
//       UserAccount(
//         id: id,
//         name: name ?? this.name,
//         lastName: lastName ?? this.lastName,
//         gender: gender ?? this.gender,
//         birthdate: birthdate ?? this.birthdate,
//         diabetes: diabetes ?? this.diabetes,
//         insulin: insulin ?? this.insulin,
//         tablets: tablets ?? this.tablets,
//       );
// }

class UserAccountForm {
  final bool isFormPosted;
  final bool isPosting;
  final bool isValid;
  final Name name;
  final LastName lastName;
  final Gender gender;
  final Birthdate birthdate;
  // final int diabetes;
  // final bool insulin;
  // final bool tablets;

  UserAccountForm({
    this.isFormPosted = false,
    this.isValid = false,
    this.isPosting = false,
    this.name = const Name.pure(),
    this.lastName = const LastName.pure(),
    this.gender = const Gender.pure(),
    this.birthdate = const Birthdate.pure(),
    // this.diabetes = 0,
    // this.insulin = false,
    // this.tablets = false,
  });

  UserAccountForm copyWith({
    bool? isFormPosted,
    bool? isPosting,
    bool? isValid,
    Name? name,
    LastName? lastName,
    Gender? gender,
    Birthdate? birthdate,
    // int? diabetes,
    // bool? insulin,
    // bool? tablets,
  }) =>
      UserAccountForm(
        isFormPosted: isFormPosted ?? this.isFormPosted,
        isPosting: isPosting ?? this.isPosting,
        isValid: isValid ?? this.isValid,
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        gender: gender ?? this.gender,
        birthdate: birthdate ?? this.birthdate,
        // diabetes: diabetes ?? this.diabetes,
        // insulin: insulin ?? this.insulin,
        // tablets: tablets ?? this.tablets,
      );
}
