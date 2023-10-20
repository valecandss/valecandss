import 'package:formz/formz.dart';

// Define input validation errors
enum BirthdateError { empty }

// Extend FormzInput and provide the input type and error type.
class Birthdate extends FormzInput<String, BirthdateError> {
  // Call super.pure to represent an unmodified form input.
  const Birthdate.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const Birthdate.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == BirthdateError.empty) return 'The field is required';

    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  BirthdateError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return BirthdateError.empty;

    return null;
  }
}
