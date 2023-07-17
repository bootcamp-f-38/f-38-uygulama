enum UserBadge {
  comment(1),
  textPost(2),
  linkPost(3),
  imagePost(3),
  awardPost(5),
  deletePost(-1),
  like(1);

  final int badge;
  const UserBadge(this.badge);
}
