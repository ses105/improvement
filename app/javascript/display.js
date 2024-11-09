window.addEventListener("turbo:load", () => {
  const imageArrows = document.querySelectorAll(".image-arrow")
  imageArrows.forEach(arrow => {
    arrow.addEventListener("click", (e) => {
      const dataIndex = e.target.getAttribute("data-index");
      console.log(dataIndex)
      const list = document.querySelector(`.more_list[data-index="${dataIndex}"]`)

      if(list.getAttribute("style") != "display:flex;"){
        list.setAttribute("style", "display:flex;");
        console.log("set")
      }else{
        list.removeAttribute("style")
        console.log("remove")
      }
    })


  })
})