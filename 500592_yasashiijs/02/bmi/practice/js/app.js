var weight;
weight = prompt('BMIを測定します。、まずはあなたの体重（kg）を入力してください');

var height;
height = prompt('BMIを測定します。次にあなたの身長（m）を入力してください');

var bmi = weight / (height * height);

var message = 'あなたのBMIは「' + bmi + '」です。';

alert(message);