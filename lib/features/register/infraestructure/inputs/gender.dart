import 'package:formz/formz.dart';

// Define input validation errors
enum GenderError { empty }

// Extend FormzInput and provide the input type and error type.
class Gender extends FormzInput<String, GenderError> {
  // Call super.pure to represent an unmodified form input.
  const Gender.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const Gender.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == GenderError.empty) return 'The field is required';

    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  GenderError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return GenderError.empty;

    return null;
  }
}
