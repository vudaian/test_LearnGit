const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);
const handleHeader = () => {
    window.addEventListener('scroll', function () {
        if (this.scrollY > 0) {
            //$("#header").style.position = "fixed";
            $("#header").style.boxShadow = "0px 0px 16px gray"
        }
        else if (this.scrollY == 0) {
            //$("#header").style.position = "relative";
            $("#header").style.boxShadow = "none"
        }
    });
}
const displaySlider = () => {
    const Obj = [
        {
            link: "https://raw.githubusercontent.com/hiimloser/Big-Maket/master/assets/Images/slideshow_1.jpg",
        },
        {
            link:"https://raw.githubusercontent.com/hiimloser/Big-Maket/master/assets/Images/slideshow_2.jpg",
        },
        {
            link:"https://raw.githubusercontent.com/hiimloser/Big-Maket/master/assets/Images/slideshow_3.jpg",
        }
    ];

    const main = $(".container-intro_mid");
    const imageSlider = document.createElement("div");
    imageSlider.classList.add("image-slider");
    const HTML = Obj.map(_element => {
        return `
            <div class="image-item">
                <div class="image">
                  <img
                    src="${_element.link}"
                    alt=""
                  />
                </div>
            </div>
        `
    })
    imageSlider.innerHTML = HTML.join("");
    const HTML_dots = document.createElement("div");
    HTML_dots.classList.add("slider-dots")
    HTML_dots.innerHTML = `
        <div class="dots-element"></div>
        <div class="dots-element"></div>
        <div class="dots-element"></div>
    `
    imageSlider.appendChild(HTML_dots);
    main.appendChild(imageSlider);
}

const handleSliders = () => {
    $(".slider-dots").children[0].classList.add("active-tab");
    $(".image-slider").children[0].classList.add("active-tab");

    const tabs = $$(".dots-element");
    const panes = $$(".image-item");
    tabs.forEach((tab, index) => {
        const pane = panes[index];
        tab.onclick = () => {
            $(".dots-element.active-tab").classList.remove("active-tab");
            $(".image-item.active-tab").classList.remove("active-tab");
            tab.classList.add("active-tab");
            pane.classList.add("active-tab");
        };
    });
}
const handleSidebar = () => {
    const link = [
        "http://localhost:83/Views/ThoiTrang/ThoiTrang_Index",
        "https://www.google.com/",
        "https://chat.zalo.me/",
        "http://localhost:83/Views/Register/Register_Index"
    ]
    const listOption = $$(".left-option");
    Array.from(listOption).forEach((item, index) => {
        item.onclick = () => {
            window.location = link[index];
        }
    })
}
const HandleProductUI = () => {
    $(".fashion-tab-groups").children[0].classList.add("active-tab-UI");
    $(".fashion-groupPanel").children[0].classList.add("active-tab-UI");

    const tabs = $$(".fashion-tab");
    const panes = $$(".fashion-panel");
    tabs.forEach((tab, index) => {
        const pane = panes[index];
        tab.onclick = () => {
            $(".fashion-tab.active-tab-UI").classList.remove("active-tab-UI");
            $(".fashion-panel.active-tab-UI").classList.remove("active-tab-UI");
            tab.classList.add("active-tab-UI");
            pane.classList.add("active-tab-UI");
        };
    });
}
const HandleProductCosmetic = () => {
    $(".cosmetic-tab-groups").children[0].classList.add("active-tab-CO");
    $(".cosmetic-groupPanel").children[0].classList.add("active-tab-CO");

    const tabs = $$(".cosmetic-tab");
    const panes = $$(".cosmetic-panel");
    tabs.forEach((tab, index) => {
        const pane = panes[index];
        tab.onclick = () => {
            $(".cosmetic-tab.active-tab-CO").classList.remove("active-tab-CO");
            $(".cosmetic-panel.active-tab-CO").classList.remove("active-tab-CO");
            tab.classList.add("active-tab-CO");
            pane.classList.add("active-tab-CO");
        };
    });
}
const handleGoToCart = () => {
    const main = $(".GoToCart")
    const result = window.innerHeight;
    window.addEventListener('scroll', function () {
       
        const index = this.scrollY;
        main.style.top = (index + result - 100) + "px";
        main.style.position = "absolute";
        main.style.right = "5%";
        main.style.transition = "all 0.5s ease";
    });
    main.onclick = () => {
        window.location.href = "http://localhost:89/Views/GioHang/Cart_Index";
    }
}
const handleSearch = () => {
    const searchBar = $(".navbar-input_search");
    const searchResult = $(".search_result");
    searchBar.oninput = () => {
        searchResult.style.display = "block";
    }
    searchBar.onblur = () => {
        if(searchBar.value.length == 0){
            searchResult.style.display = "none";
        }
    }
}

//Call function
handleHeader();
displaySlider();
handleSidebar();
handleSliders();
HandleProductUI();
handleGoToCart();
HandleProductCosmetic();
handleSearch();
