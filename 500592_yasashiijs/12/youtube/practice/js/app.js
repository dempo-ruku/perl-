const KEY = 'AIzaSyDs9OtHlLc6fs-WjPjMbGr-zex1Rbh0YUE';
var url = 'https://www.googleapis.com/youtube/v3/search?';
url += 'type=video';
url += '&part=snippet';
url += '&q=music';
url += '&videoEmbeddable=true';
url += '&videoSyndicated=true';
url += '&maxResults=6';
url += '&key=' + KEY;

$(function () {
  $.ajax({
    url: url,
    dataType : 'jsonp'
  }).done(function(data) {
    if (data.items) {
      setData(data);
    } else {
      console.log(data);
      alert('該当するデータが見つかりませんでした');
    }
  }).fail(function (data) {
    alert('通信に失敗しました');
  })
})

function setData(data) {
  var result = '';
  var video = '';

  for (var i = 0; i < data.items.length; i++) {
    video = '<iframe src="https://www.youtube.com/embed/';
    video += data.items[i].id.videoId;
    video += '" allowfullscreen></iframe>';
    result += '<div class="video">' + video + '</div>'
  }

  $('#videoList').html(result);
}