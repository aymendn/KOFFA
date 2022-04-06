String getPrefix(String name) {
  switch (name) {
    case 'حليب':
      return 'لتر';
    case 'بيض':
      return '';
    default:
      return 'كغ';
  }
}
