extension StringExt on String {
  String removeSpaces() => replaceAll(' ', '');
  String removeHyphens() => replaceAll('-', '');
  String removeUnderscores() => replaceAll('_', '');
  String removeSpacesHyphensUnderscores() => replaceAll(RegExp(r'[-_\s]'), '');
  String removeHttp() => replaceAll('http://', '');
  String removeHttps() => replaceAll('https://', '');
  String removeHttpHttps() => replaceAll(RegExp(r'(http|https)://'), '');
  String removeHttpHttpsWww() =>
      replaceAll(RegExp(r'(http|https)://(www.)?'), '');

  String addUnderscorFirst() => '_$this';
  String addHyphenFirst() => '-$this';
  String addQuestionMarkLast() => '$this ?';
  String addExclamationMarkLast() => '$this !';
  String addDotLast() => '$this.';
  String addCommaLast() => '$this,';
  String addSemicolonLast() => '$this;';
  String addColonLast() => '$this:';
  String addTextFirst(String x) => '$x $this';
  String addTextLast(String x) => '$this $x';
  String addGmail() => '$this@gmail.com';
  String addDotCom() => '$this.com';
  String addDotNet() => '$this.net';
  String addDotOrg() => '$this.org';
  String addDotInfo() => '$this.info';
  String addDotBiz() => '$this.biz';
  String addDotCo() => '$this.co';
  String addDotIn() => '$this.in';
  String addDotUs() => '$this.us';
  String addDotUk() => '$this.uk';
  String addDotCa() => '$this.ca';
  String addDotBd() => '$this.bd';
  String addDotIO() => '$this.io';

  bool get isEmail => RegExp(r'^\w+@\w+\.\w+$').hasMatch(this);
  bool get isUrl => RegExp(r'^https?://\w+\.\w+$').hasMatch(this);
  bool get isHttps => RegExp(r'^https://\w+\.\w+$').hasMatch(this);
  bool get isHttp => RegExp(r'^http://\w+\.\w+$').hasMatch(this);
  bool get isUpperCase => this == toUpperCase();
  bool get isLowerCase => this == toLowerCase();
  bool get isAlphabet => RegExp(r'^[a-zA-Z]+$').hasMatch(this);
  bool get containSpace => contains(' ');
  bool get containHyphen => contains('-');
  bool get containUnderscore => contains('_');
  bool get containSpaceHyphenUnderscore =>
      RegExp(r'[-_\s]').hasMatch(this);
  bool get containNumber => RegExp(r'\d').hasMatch(this);
    
}
