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