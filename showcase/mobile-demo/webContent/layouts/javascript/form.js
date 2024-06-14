var myVar;
var lat;
var lng;
var isPlay = false;
function getLocation() {
	var myLocation = lat + "," + lng;
	return myLocation;
};

function openNativeMapsApp(latitude, longitude) {
	lat = latitude;
	lng = longitude;
	window.location = 'ios:openNativeMapsApp';
};

var myVar = null;
var timer = 0;
function onTimerLoad(){
	if($("[name='form:hiddenTimerId']").val()){
		var currentTime = $("[name='form:hiddenTimerId']").val();
		if(currentTime == null)
			return;
		var res = currentTime.split(":");
		if(res.length == 2){
			timer = parseInt(res[0])* 60 + parseInt(res[1]);
			document.getElementById("timerId").value = $("[name='form:hiddenTimerId']").val();
			if(timer > 0){
				document.getElementById("startPauseTimerId").value = "Resume";	
			}
			document.getElementById("stopTimerId").value = "End";
			document.getElementById("stopTimerId").disabled = false;
		}
		
	}
}


function countTime() {
	minutes = parseInt(timer / 60, 10)
	seconds = parseInt(timer % 60, 10);

	minutes = minutes < 10 ? "0" + minutes : minutes;
	seconds = seconds < 10 ? "0" + seconds : seconds;

	var timerLabel = document.getElementById("timerId").value = minutes + ":"
			+ seconds;
	document.getElementById("form:hiddenTimerId").value = minutes + ":"
	+ seconds;
	$("[name='form:hiddenTimerId']").val(minutes + ":" + seconds).triggerHandler('change');
	timer += 1;
}
function myTimer() {
	document.getElementById("stopTimerId").value = "End";
	document.getElementById("stopTimerId").className = "btn-red";
	isReseted = false;

	if (!myVar) {
		document.getElementById("stopTimerId").disabled = false;
		document.getElementById("startPauseTimerId").value = "Pause";
		countTime();
		myVar = setInterval(countTime, 1000);

	} else {
		document.getElementById("startPauseTimerId").value = "Resume";
		clearMyTimer();
	}

};

function clearMyTimer() {
	if (myVar) {
		clearInterval(myVar);
		myVar = null;
	}
}

var isReseted = false;
function stopMyTimer() {
	timer = 0;
	if (isReseted) {
		document.getElementById("startPauseTimerId").value = "Start";
		document.getElementById("stopTimerId").value = "End";
		document.getElementById("stopTimerId").disabled = true;
		document.getElementById("timerId").value = "00:00";
		document.getElementById("form:hiddenTimerId").value = "00:00";
		document.getElementById("stopTimerId").className = "btn";
	} else {
		document.getElementById("startPauseTimerId").value = "Start";
		document.getElementById("stopTimerId").value = "Reset";
		document.getElementById("stopTimerId").className = "btn-red";
		clearMyTimer();
	}
	isReseted = !isReseted;
}

var isShow = true;
function showHideHeader() {
	var bodyHeader = document.querySelector("#bodyHeader");
	if (isShow) {
		bodyHeader.classList.add("disableMenu");
	} else {
		bodyHeader.classList.remove("disableMenu");
	}
	isShow = !isShow;
}

var isShowWorkingTime = true;
function showHideWorkingTime() {
	var workingTimeTable = document.querySelector("#workingTimeTable");
	if (isShowWorkingTime) {
		workingTimeTable.classList.add("disableMenu");
	} else {
		workingTimeTable.classList.remove("disableMenu");
	}
	isShowWorkingTime = !isShowWorkingTime;
}

var isSpareParks = true;
function showHideSpareParks() {
	var spareParksTable = document.querySelector("#spareParksTable");
	if (isSpareParks) {
		spareParksTable.classList.add("disableMenu");
	} else {
		spareParksTable.classList.remove("disableMenu");
	}
	isSpareParks = !isSpareParks;
}

var isComments = true;
function showHideComments() {
	var commentsTable = document.querySelector("#commentsTable");
	if (isComments) {
		commentsTable.classList.add("disableMenu");
	} else {
		commentsTable.classList.remove("disableMenu");
	}
	isComments = !isComments;
}

var materialCheckedList = new Array;
function setValueToCheckBox(index){
	var i = materialCheckedList.indexOf(index);
	if (i > -1) {
		materialCheckedList.splice(i, 1);		
	} else {
		materialCheckedList.push(index);
	}
	document.getElementById("form:selectedMatetialList").value = materialCheckedList.toString();
	$("[name='form:selectedMatetialList']").val(materialCheckedList.toString()).triggerHandler('change');	
	console.log("selectedMatetialList: " + document.getElementById("form:selectedMatetialList").value);
}


