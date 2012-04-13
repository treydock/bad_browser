$(document).ready(function() {

  $('#warningClose').click(function(e){
    e.preventDefault();
    $('#browserWarning').slideUp('slow');
    return false;
  });
  
  $('#chromeFrameOpen').click(function(e) {
    e.preventDefault();
    openChromeFrame($(this).data('url'));
    return false;
  });
});

// Launch the Chrome Frame check
function openChromeFrame(url) {
  CFInstall.check({
    mode:'overlay',
    destination: url
  });
}

// Source derived from http://think2loud.com/147-build-an-unsupported-browser-warning-with-jquery/
function badBrowser(url){
  var badBrowserMessage = "You are using an unsupported browser. Please install <a id='chromeFrameOpen' href='#'>Google Chrome Frame</a> or switch to <a href='http://getfirefox.com' target='_blank'>Firefox</a> or <a href='https://www.google.com/chrome' target='_blank'>Google Chrome</a>. Thanks! [<a id='warningClose' href='#'>close</a>]";

  $(document.createElement('div')).attr('id', 'browserWarning')
    .html(badBrowserMessage)
    .data('url', url)
    .css({
      'background-color': '#f9db17',
      'color': '#000000',
      'width': '100%',
      'border-top': 'solid 1px #000',
      'border-bottom': 'solid 1px #000',
      'text-align': 'center',
      'padding': '5px 0px 5px 0px'
    })
    .prependTo("body")
    .hide();
    $('#browserWarning').slideDown('slow');
}
