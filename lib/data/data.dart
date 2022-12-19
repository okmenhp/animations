class Item {
  final String urlImage;
  final String title;
  Item({
    required this.urlImage,
    required this.title,
  });
}

final List<Item> listItem = [
  Item(
      urlImage:
          'https://images.unsplash.com/photo-1666961898009-bd6d49fb810a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: 'Item 1'),
  Item(
      urlImage:
          'https://images.unsplash.com/photo-1666713223051-44ba04972160?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: 'Item 2')
];
