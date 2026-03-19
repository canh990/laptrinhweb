function validateForm(id) {
    let inputs = document.querySelectorAll(`#${id} input`);
    for (let input of inputs) {
        if (input.value.trim() === "") {
            alert("Không được để trống");
            return false;
        }
    }
    return true;
}