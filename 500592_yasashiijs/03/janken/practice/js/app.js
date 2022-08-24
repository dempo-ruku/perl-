const GU    = 1;
const CHOKI = 2;
const PA = 3;


var hum = '半角数字で１〜３の数字を入力してください。\n\n' + GU + '：グー\n' + CHOKI + '：チョキ\n' + PA + '：パー'

var jan = prompt(hum);

jan = parseInt(jan, 10);

if (jan !== GU && jan !== CHOKI && jan !== PA) {
  alert('入力値をうまく認識できませんでした。ブラウザを再読み込みすると、もう一度挑戦できます。');
} else {
  var com = Math.floor(Math.random() * 3) + 1;
  var comHandName = '';
  switch (com) {
    case GU:
      comHandName = 'グー';
      break;
    case CHOKI:
      comHandName = 'チョキ';
    break;
    case PA:
      comHandName = 'パー';
    break;
  }
  var msgResult = '';
  var win = (com === GU && jan === PA) || (com === CHOKI && jan === GU) || (com === PA && jan === CHOKI);
  if (jan === com) {
    msgResult = '結果はあいこでした。';
  } else if (win) {
    msgResult = '勝ちました。';
  } else {
    msgResult = '負けました。';
  }
  
  msgResult = msgResult + 'コンピュータの出した手は「' + comHandName + '」でした';
  alert(msgResult);
}
