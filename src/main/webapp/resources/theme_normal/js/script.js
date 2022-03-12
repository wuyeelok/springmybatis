$(document).ready(function() {
	const deleteBtnEles = [...document.getElementsByClassName("btn__delete")];

	if (deleteBtnEles != null && deleteBtnEles.length > 0) {
		deleteBtnEles.forEach(ele => {
			ele.addEventListener("click", (e) => {
				if (!confirm("Are you sure you want to delete the record?")) {
					e.preventDefault();
					return false;
				}
			})
		})
	}


	if ($("#hiddenTxt") && $("#hiddenTxt").val()) {
		let hobbies = $("#hiddenTxt").val().split(",");
		let $checkboxes = $("input[type=checkbox]");

		$checkboxes.each(function(idx, element) {

			if (hobbies.indexOf(element.value) != -1) {
				element.setAttribute("checked", "checked");
			} else {
				element.removeAttribute("checked");
			}

		})
	}
})