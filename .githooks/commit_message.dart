import 'dart:io';

final regExp = RegExp(
  r'(fix|feat|chore|refactor|docs|style|test)(\(\w+\))?:.+',
);

void main() {
  final rootDir = Directory.current;
  final commitFile = File(rootDir.path + "/.git/COMMIT_EDITMSG");
  final commitMessage = commitFile.readAsStringSync();
  final isValid = regExp.hasMatch(commitMessage);
  if (!isValid) {
    print('''👎 Bad commit message! A correct one would be: 
        docs: correct spelling of CHANGELOG''');
    exitCode = 1;
  } else {
    print('''🚀 Nice commit message!''');
  }
}
