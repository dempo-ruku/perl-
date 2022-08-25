let button = document.getElementById('button');
let form = document.getElementById('form');
let textarea = document.getElementById('textarea');

let maxTextNum = textarea.getAttribute('maxlength');

let remainingTimeNum = 10;

let textMassage = document.createElement('div');
let parent = textarea.parentElement;
parent.insertBefore(textMassage, textarea);

let timeMessage = document.createElement('div');
parent.insertBefore(timeMessage, null);

button.addEventListener('click', function () {
  form.style.display = 'block';

  let timerId = setInterval(function () {
    timeMessage.innerHTML = '<p>制限時間：' + remainingTimeNum + '秒</p>';
    if (remainingTimeNum <= 0) {
      alert('制限時間終了');
      clearInterval(timerId);
    }
    remainingTimeNum--;
  }, 1000)
})

textarea.addEventListener('keyup', function () {
  let currentTextNum = textarea.value.length;
  textMassage.innerHTML = '<p>あと「' + (maxTextNum - currentTextNum) + '」文字入力できます。</p>';
})
