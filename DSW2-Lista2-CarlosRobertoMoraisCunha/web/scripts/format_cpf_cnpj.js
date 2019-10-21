var formCpfCnpj = document.getElementById("formCpfCnpj");
var alertFormat = document.getElementById("alertFormat");

formCpfCnpj.addEventListener("submit", function (event) {
    event.preventDefault();

    if (formCpfCnpj["valueInput"].value.length === 11 || formCpfCnpj["valueInput"].value.length === 14) {
        formCpfCnpj.submit();
    } else {
        alertFormat.style.display = "block";
        formCpfCnpj["valueInput"].focus();
    }
});