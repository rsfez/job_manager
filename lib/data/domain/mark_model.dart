enum Grade { standard, weak, good, great }

class MarkModel {
  final int mark;

  const MarkModel({required this.mark});

  Grade getSkillGrade() {
    if (mark < 6) {
      return Grade.weak;
    } else if (mark < 12) {
      return Grade.standard;
    } else if (mark < 16) {
      return Grade.good;
    } else {
      return Grade.great;
    }
  }
}
