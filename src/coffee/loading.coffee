$mark = $ "#mark"
markLeft = $mark.position().left
$mark.css left: "50%" ,transform: "translateX(-50%)"

$(window).on "load", ->
  $("#loading").fadeOut "fast"
    .promise()
    .then ->
      $mark.animate left: markLeft, transform: "translateX(0)", "slow"
      $("#logo").animate transform: "translateX(0)", opacity: 1, "slow"
    .then ->
      $("h1 > span").animate
        opacity: 1, "slow"
    .then -> $("body").css overflow: "auto"
