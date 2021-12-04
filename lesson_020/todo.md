# Part I: Create A TODO Application

1. Create a file named todos.json
2. Inside it add three todo objects inside a list with the following details
   1. **id**: A numeric or String random ID
   2. **todoType**: could be either (personal, work, school). 
   3. **title**: A title for the Todo 
   4. **description**: A description for the Todo, 
   5. **steps**: A list of Strings, each string describing a step. 
   6. **creationDate**: A random date in the formated YYYY-MM-DD
   7. **dueDate**: A random date in the future formated as YYYY-MM-DD
5. Create an enum named TodoType with the fields (personal, work, school)
   1. Create A Parser extension which converts the TodoType to String and back
6. Create a class named Todo with the following instance variables:
   1. **id**: **String** or **int**
   2. **todoType**: **TodoType**
   3. **title**: **String**
   4. **description**: **String**
   5. **steps**: **List<String>**
   6. **creationDate**: **DateTime**
   7. **dueDate**: **DateTime**
7. Create factory constructor named fromJson which can convert a **Map<String,dynamic>** to **Todo**
8. Create method named toJson() which can convert **Todo** to **Map<String,dynamic>**
9. Override its toString(); method to print out all Todo instance variables
10. Read the file inside todo.dart as a string, and print it to the console.
11. Convert the content of the file (String) to **List<Map<String,dynamic>>**
12. Convert the **List<Map<String,dynamic>>** to **List<Todo>**
13. print each todo to the console. 
14. Create a function which receives Todo info from the User and saves it to the file todos.json
15. Create a function which reads all the Todos, 
16. Create a function which reads a single todo based on the id
17. Create a function which reads updates a todo 

## Part II: Creating a User
1. Create an enum named **UserType** with the fields **admin, customer**
2. Create an abstract class named User with the following info:
   1. **id**: **String**
   2. **userType**: **UserType**
   3. **name**: **String**
   4. **email**: **String**
   5. **phone**: **String**
   6. **password**: **String**
   7. **bio**: **String**
3. Create a class named Customer which extends User 
   1. 
4. Create a class naed 
