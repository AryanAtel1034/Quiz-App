import 'package:second/models/question_model.dart';

const questions = [
  QuestionModel(
    'Who created Flutter?',
    [
      'Facebook',
      'Adobe',
      'Google',
      'Microsoft',
    ],
  ),
  QuestionModel(
    'What is Flutter?',
    [
      'Android Development Kit',
      'IOS Development Kit',
      'Web Development Kit',
      'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
    ],
  ),
  QuestionModel(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuestionModel(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuestionModel(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
