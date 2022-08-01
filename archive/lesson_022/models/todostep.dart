    
   class TodoStep {
    final  String id;
final  String? title;
final  bool? isCompleted;


    const TodoStep({required  this.id,
 this.title,
 this.isCompleted,
});
    
    

    

      
  TodoStep copyWith ({String? id,String? title,bool? isCompleted,}){
    return TodoStep (
    id: id ?? this.id,title: title ?? this.title,isCompleted: isCompleted ?? this.isCompleted,
    );
  }
    

    Map<String, dynamic> toJson(){
  var json = <String, dynamic> {
    "id" : id,
"title" : title,
"isCompleted" : isCompleted,

  };
  json.removeWhere((key, value)=> value == null);
  return json;
}
    
  }
    