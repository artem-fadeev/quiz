import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
      title: 'Вопрос первый?',
      answers: [
        {'answer': 'вопрос первый ответ первый'},
        {'answer': 'вопрос первый ответ второй', 'isCorrect': true},
        {'answer': 'вопрос первый ответ третий'},
        {'answer': 'вопрос первый ответ четвертый'},
      ],
    ),
    Question(
      title: 'Вопрос второй?',
      answers: [
        {'answer': 'вопрос второй ответ первый'},
        {'answer': 'вопрос второй ответ второй'},
        {'answer': 'вопрос второй ответ третий', 'isCorrect': true},
        {'answer': 'вопрос второй ответ четвертый'},
      ],
    ),
    Question(
      title: 'Вопрос третий?',
      answers: [
        {'answer': 'вопрос третий ответ первый'},
        {'answer': 'вопрос третий ответ второй'},
        {'answer': 'вопрос третий ответ третий'},
        {'answer': 'вопрос третий ответ четвертый', 'isCorrect': true},
      ],
    ),
    Question(
      title: 'Вопрос четвертый?',
      answers: [
        {'answer': 'вопрос четвертый ответ первый', 'isCorrect': true},
        {'answer': 'вопрос четвертый ответ второй'},
        {'answer': 'вопрос четвертый ответ третий'},
        {'answer': 'вопрос четвертый ответ четвертый'},
      ],
    ),
    Question(
      title: 'Вопрос пятый?',
      answers: [
        {'answer': 'вопрос пятый ответ первый'},
        {'answer': 'вопрос пятый ответ второй', 'isCorrect': true},
        {'answer': 'вопрос пятый ответ третий'},
        {'answer': 'вопрос пятый ответ четвертый'},
      ],
    ),
  ];

  List<Question> get questions => [..._data];
}