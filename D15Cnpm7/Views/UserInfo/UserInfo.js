const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);
const HandleClick = () => {
    const elementGroup = $$(".fa-solid");
    Array.from(elementGroup).forEach(_elemet => {
        _elemet.onclick = () => {
            const parent = _elemet.parentElement.querySelector(".txtInfo");
            parent.disabled = false;
        }
    })
}

const handleMessage = () => {
    const main = $(".txtMess");
    if (main.innerText.length > 0) {
        setTimeout(() => {
            main.innerText = "";
        }, 3000)
    }
}
// call funtion
handleMessage();
HandleClick();