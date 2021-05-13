class Post{
  String title;
  String userName;
  String text;
  DateTime dateCreated;
  post(String title,String authorName,String text,DateTime dateCreated){
    this.title=title;
    this.userName=authorName;
    this.text=text;
    this.dateCreated=dateCreated;
  }
}