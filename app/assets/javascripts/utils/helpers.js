function toMilitary(dateTime) {
  var date = new Date(dateTime);
  var hours = toDoubleDigit(date.getUTCHours());
  var minutes = toDoubleDigit(date.getUTCMinutes());
  return hours + ":" + minutes;
}

function timeDisplay(dateTime) {
  var date = new Date(dateTime);
  var hours = date.getUTCHours();
  var period = hours > 11 ? "pm" : "am";
  hours > 12 ? hours -= 12 :
  hours = hours.toString();
  var minutes = toDoubleDigit(date.getUTCMinutes());

  return hours + ":" + minutes + period;
}

function dateDisplay(dateStr) {
  var date = new Date(dateStr)
  var months = ["January", "February", "March", "April", "May", "June", "July",
                "August", "September", "October", "November", "December"]
    return months[date.getUTCMonth()] + " " + date.getUTCDay();
}

function toDoubleDigit(num) {
  if (num < 10) {
    return "0" + num.toString();
  }

  return num;
}

function chevron(direction) {
  var chevron = '<span class="glyphicon glyphicon-chevron-' + direction +
  ' toggle-filter-button" aria-hidden="true"></span>';
  return chevron;
}

function buttons(buttonType, label, modelType, buttonNames, selectedItems) {
  var $container = $(JST['helpers/button_container']({label: label}));
  buttonNames.forEach(function (buttonName) {
    if (_.include(selectedItems, buttonName)) {var checked = "checked";}
    else {var checked = "";}

    var name = modelType + "[" + label + ']';
    if (buttonType === "checkbox") {name += "[]";}
    var button = JST['helpers/button']({
      buttonType: buttonType,
      buttonName: buttonName,
      name: name,
      checked: checked,
      className: modelType + "-click-button"
    })
    $container.append(button);
  })
  return $container.html();
}

function select(label, model, itemNames, selectedItem) {
  var button = JST['helpers/select']({
    label: label,
    itemNames: itemNames,
    model: model,
    selectedItem: selectedItem
  });
  return button;
}


function capitalize(string) {
  return string.charAt(0).toUpperCase() + string.substring(1);
}

function toTitle(string){
  // string = string.replace(/([A-Z])/g, function(char){return (" " + char);});
  string = string.replace(/_([a-z])/g, function (g) { return " " + g[1].toUpperCase(); })
  return capitalize(string);
};


function verifyPicture(user) {
  if (user.get("picture") === null) {
    user.set("picture", "http://www.digitaldavidson.co.uk/wp-content/uploads/2014/03/gravatar-logo-512.jpg")
  }
}

function key(obj, value) {
  for (var key in obj){
    if (obj[key] === value) {
      return key;
    }
  }
  return undefined;
}
