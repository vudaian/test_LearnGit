const handleThanhToan = () => {
    const main = document.querySelector("#btnThanhToan");
    const price = document.querySelector("#lbPrice");
    const payment = document.querySelector(".payment_methods");
    main.onclick = (e) => {
        e.preventDefault();
        if (price.innerHTML !== "0") {
            payment.style.display = "block";
        } else {
            alert("Bạn chưa mua hàng !!!");
        }
    }
}
handleThanhToan();