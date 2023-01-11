const $ = document.querySelector.bind(document);
const handleNumber = () => {
    const main = $(".FormNumber");
    var result = parseInt(main.value);
    const prev = $(".Prev");
    const next = $(".Next");
    main.onblur = () => {
        if (main.value < 1) {
            main.value = 1;
            result = 1;
        }
    }
    prev.onclick = () => {

        result = result - 1;
        main.value = result;
        if (main.value < 1) {
            main.value = 1;
            result = 1;
        }
    }
    next.onclick = () => {

        result = result + 1;
        main.value = result;
    }
}
handleNumber();