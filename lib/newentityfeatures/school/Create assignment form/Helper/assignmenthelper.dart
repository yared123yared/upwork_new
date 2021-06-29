/* import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:flutter/cupertino.dart';

class AssignmentHelper {
  static List<ListStateClass> toQuestionStudyMaterialListState(
    List<dynamic> listItems,
    BuildContext context,
    bool emptyList,
    String assignmentID, {
    @required DynamicSchoolListState schoolListState,
  }) {
    List<ListStateClass> _dynamicList = [];
    if (schoolListState != null) {
      switch (schoolListState) {
        case DynamicSchoolListState.Questions:
          if (listItems is List<Question>)
            listItems.asMap().forEach((index, question) {
              _dynamicList.add(
                ListStateClass(
                  title: question.questionText,
                  subtitle: question.questionType,
                  tapAction: () {
                    BlocProvider.of<SchoolBloc>(context).add(
                      QuestionFormSchoolEvent(
                        question: question,
                        index: index,
                        emptyList: emptyList,
                        assignmentID: assignmentID,
                      ),
                    );
                  },
                  // deleteAction: () {
                  //   BlocProvider.of<SchoolBloc>(context).add(
                  //     RemoveQuestionSchoolEvent(
                  //       question: question,
                  //       assignmentID: assignmentID,
                  //     ),
                  //   );
                  // },
                ),
              );
            });
          break;
        case DynamicSchoolListState.StudyMaterials:
          if (listItems is List<StudyMaterial>)
            listItems.asMap().forEach((index, studyMaterial) {
              _dynamicList.add(ListStateClass(
                title: "Study Material ${index++}",
                subtitle: studyMaterial.type,
                tapAction: () {
                  BlocProvider.of<SchoolBloc>(context).add(
                    StudyMaterialsFormSchoolEvent(
                      index: index,
                      studyMaterial: studyMaterial,
                      assignmentID: assignmentID,
                      emptyList: emptyList,
                    ),
                  );
                },
              ));
            });
          break;
      }
      return _dynamicList;
    }
  }
}
 */