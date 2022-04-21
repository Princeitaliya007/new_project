import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatModal{
  final int id;
  final String name;
  final String message;
  final String time;
  final String image;
  final String calltime;

  ChatModal({
    required this.id,
    required this.name,
    required this.message,
    required this.time,
    required this.image,
    required this.calltime,
});
}

List l1 = <ChatModal>[
  ChatModal(id: 1, name: "Tony Stark Lokhand wala", message: "Flutter is great", time: "12:28 pm", image: 'https://images.indianexpress.com/2021/03/tony-stark-1200.jpg', calltime: 'Yesterday, 9:41 AM'),
  ChatModal(id: 2, name: "Senapati", message: "Mai Gareeb hu", time: "1:59 pm", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdbsyfOOH4z4PDLqMmRavTyAjYKwSU2SGA_Q&usqp=CAU', calltime: 'Yesterday, 10:45 AM'),
  ChatModal(id: 3, name: "Thor Hathoda walo", message: "Done", time: "4:23 pm", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh5AABj5NH2qwuN-plnhW8GJ0EXKSA39U49A&usqp=CAU', calltime: 'April 11, 6:30 PM'),
  ChatModal(id: 4, name: "Thanos chapti walo", message: "Ready for fight?", time: "12:10 pm", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR8VdgY1U7X-Mpua7-Sy0FOeWoIFFCt7rtiA&usqp=CAU', calltime: 'April 9, 8:48 AM'),
  ChatModal(id: 5, name: "Hulk Gabharu Jawan", message: "I throwed my phone", time: "2:21 pm", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGSkP4i7zRHy235xhwQjhqkCvfRxFGXXM4-Q&usqp=CAU', calltime: 'April 4, 11:48 AM'),
  ChatModal(id: 6, name: "Dr Strange Magic dada", message: "It's magic", time: "3:45 pm", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnFIurJak2KDEuxkK5el6qD49-vZyroV9hLw&usqp=CAU', calltime: 'March 27, 7:10 AM'),
  ChatModal(id: 7, name: "Veer Jalawalo", message: "Tum mere dost ho", time: "Yesterday", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmH9hDDsmQx7AZFvNyC2hP96qYwDJILE1djA&usqp=CAU', calltime: 'March 25, 11:41 AM'),
  ChatModal(id: 8, name: "Kidi Man", message: "Bhai mere arrow Kidiman le gaya", time: "Yesterday", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrumP4Z_PPblen0yiRNKIKpctOWg0bYCiQ0Q&usqp=CAU', calltime: 'March 21, 12:41 PM'),
  ChatModal(id: 9, name: "Tiragdaaz", message: "Hawkeye juth bol raha he", time: "Yesterday", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_EfCPcBp1L3KyB2UoO_eFIEf62bFKjT0bZA&usqp=CAU', calltime: 'March 15, 1:41 PM'),
  ChatModal(id: 10, name: "Tony Stark Lokhand wala", message: "Flutter is great", time: "12:28 pm", image: 'https://images.indianexpress.com/2021/03/tony-stark-1200.jpg', calltime: 'March 9, 4:15 PM'),
  ChatModal(id: 11, name: "Senapati", message: "Mai Gareeb hu", time: "1:59 pm", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdbsyfOOH4z4PDLqMmRavTyAjYKwSU2SGA_Q&usqp=CAU', calltime: 'March 8, 6:05 PM'),
  ChatModal(id: 12, name: "Thor Hathoda walo", message: "Done", time: "4:23 pm", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh5AABj5NH2qwuN-plnhW8GJ0EXKSA39U49A&usqp=CAU', calltime: 'March 5, 8:00 PM'),
];

Map drawerlist = <Icon, String>{
  const Icon(Icons.supervisor_account, color: Colors.black54): "New Group",
  const Icon(Icons.account_circle_rounded, color: Colors.black54): "Contacts",
  const Icon(Icons.phone, color: Colors.black54) : "Calls",
  const Icon(Icons.bookmark, color: Colors.black54) : "Saved messsages",
  const Icon(Icons.settings, color: Colors.black54) : "Settings",
};
