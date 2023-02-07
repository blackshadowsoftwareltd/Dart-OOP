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
}
