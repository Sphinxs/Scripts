
////////////////////////////////////////////////////////
//
// Englishexperts.com.br/forum/1000-palavras-mais-usadas-em-ingles-t4469.html
//
////////////////////////////////////////////////////////

words = [];

document
  .querySelectorAll("tr")
  .forEach(item =>
    words.push(
      'new Word{en="' +
        item.childNodes[3].innerText +
        '", pt="' +
        item.childNodes[7].innerText +
        '"},'
    )
  );

words.forEach(item => document.write(item) + "<br/>");