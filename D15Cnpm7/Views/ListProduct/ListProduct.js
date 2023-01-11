const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)
const displayOption = () => {
    const btn = $$(".add_Cart");
    Array.from(btn).forEach(_elemet => {
        _elemet.onclick = (e) => {
            e.preventDefault();
            $(".option").style.display = "flex";
        }
    })
}
const hideOption = () => {
    const cancel = $(".hide-option");
    cancel.onclick = () => {
        $(".option").style.display = "none";
    }
}
displayOption();
hideOption();