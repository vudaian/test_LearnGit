const { Alert } = require("bootstrap");

const handleSubmit = () => {
    const listMess = document.querySelectorAll(".form-message");
    var result = "";
    result += Array.from(listMess).map((_element) => {
        return  _element.innerHTML;
    })
    //console.log(result.toString().join(""))
    console.log(result.length)
    
    if (result.length > 1) {
        Alert("hehe")
    }
}

const hanldleClick = () => {
    const btn = document.querySelector(".isLogin");
    console.log([btn])
    btn.onClick = handleSubmit;
}
hanldleClick();