function setCookie(c_name,value)
{
  var c_value=escape(value)
  document.cookie=c_name + "=" + c_value;
}

function getCookie(c_name)
{
  var i,x,y,ARRcookies=document.cookie.split(";");
  for (i=0;i<ARRcookies.length;i++)
  {
    x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
    y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
    x=x.replace(/^\s+|\s+$/g,"");
    if (x==c_name)
    {
      return unescape(y);
    }
  }
}

// Extract audio object and time played from cookie
var song = document.getElementsByTagName('audio')[0];
var tillPlayed = getCookie('timePlayed');

// Checks if songs has been played before and starts at correct time if so
function updatePlayer()
{
  if (tillPlayed){ song.currentTime = tillPlayed; }
  else{ setCookie('timePlayed', "0"); }
  song.play();
}
updatePlayer();

// Update cookie with current time of song
function updateTillPlayed()
{
  setCookie('timePlayed', song.currentTime);
}
setInterval(updateTillPlayed,100);
