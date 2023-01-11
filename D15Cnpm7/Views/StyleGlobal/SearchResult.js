const $ = document.querySelector.bind(document);
const handleSearch = () => {
    const container = $(".navbar-container_search");
    const input = container.querySelector(".navbar-input_search");
    const submit = container.querySelector(".submitSearch");
    console.log(submit);
    submit.onclick = (e) => {
        e.preventDefault();
        const link = "https://localhost:44375/Views/ProductsSearch/SearchProducts?value=" + input.value;
        window.location.href = link;
    }
}

handleSearch();