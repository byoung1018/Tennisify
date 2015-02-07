function time(dateTime) {
  var date = new Date(dateTime);
  var hours = toDoubleDigit(date.getUTCHours());
  var minutes = toDoubleDigit(date.getUTCMinutes());
  return hours + ":" + minutes;
}

function toDoubleDigit(num) {
  if (num < 10) {
    return "0" + num.toString();
  }

  return num;
}

function buttons(buttonType, label, model, buttonNames, selectedItem) {
  return JST['helpers/buttons']({
    buttonType: buttonType,
    label: label,
    buttonNames: buttonNames,
    model: model,
    selectedItem: selectedItem
  });
}

function select(label, model, itemNames) {
  return JST['helpers/select']({
    label: label,
    itemNames: itemNames,
    model: model
  });
}


function capitalize(string) {
  return string.charAt(0).toUpperCase() + string.substring(1);
}

function toTitle(string){
  string = string.replace(/([A-Z])/g, function(char){return (" " + char);});
  return capitalize(string);
};
