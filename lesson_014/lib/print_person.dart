void printPerson(Map<String, dynamic> person, [String title = 'Person Info']) {
  print('''

---------------------------------------------
$title

ID:\t${person['id']}
Name:\t${person['name']}
Age:\t${person['age']}
Height:\t${person['height']}
Income:\t${person['income]']}
---------------------------------------------
  ''');
}
