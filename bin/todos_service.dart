import 'package:todos_service/model/todos_model.dart';
import 'package:todos_service/services/http_service.dart';

void main() async {
  String body =
      await TodosService.GET(TodosService.apiTodos, TodosService.headers);
  List todos = TodosService.parseTodosList(body);
  print(todos);
  Todos todose = Todos(userId: 3, id: 5, title: "Muzaffar", completed: true);
  // print(todose);
  // String response = await TodosService.POST(
  //     TodosService.apiTodos, TodosService.headers,todose.toJson());
  // print(response);
  // String responds1 = await TodosService.GET(TodosService.apiTodos + todose.id.toString(), TodosService.headers );
  // print("get:$responds1");
  // String result = await TodosService.PUT(
  //     TodosService.apiTodos + todose.id.toString(),
  //     TodosService.headers,
  //     todose.toJson());
  // print(result);
  // String response = await TodosService.PATCH(
  //     TodosService.apiTodos + todose.id.toString(),
  //     TodosService.headers,
  //     {'body': "salom"});
  // print(response);
    String responses = await TodosService.DELETE(
        TodosService.apiTodos + todose.id.toString(),
        TodosService.headers);
    print("delete:$responses");
  }
