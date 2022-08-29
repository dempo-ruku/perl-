// $(function () {
//   $('#btn').on('click', function () {
//     $.ajax({
//       url: "https://zipcloud.ibsnet.co.jp/api/search?zipcode=" + $('#zipcode').val(),
//       dataType: 'jsonp',
//     }).done(function (data) {
//       if (data.results) {
//         setData(data.results[0]);
//       } else {
//         alert('該当するデータが見つかりませんでした');
//       }
//     }).fail(function (data) {
//       alert('通信に失敗しました');
//     })
//   });

//   function setData(data) {
//     $('#prefecture').val(data.address1);
//     $('#city').val(data.address2);
//     $('#address').val(data.address3);
//   }
// })


var btn = document.querySelector('#btn');
var zipcode = document.querySelector("#zipcode");

btn.addEventListener('click', function () {
  var inputValue = zipcode.value;

  var url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=" + inputValue;

  fetch(url)
    .then(response => response.json())
    .then(data => {
      if (data.results) {
        setData(data.results[0]);
      } else {
        alert('該当するデータが見つかりませんでした。');
      }
    });
})

function setData(data) {
  document.getElementById('prefecture').value = data.address1;
  document.getElementById('city').value = data.address2;
  document.getElementById('address').value = data.address3;
}
