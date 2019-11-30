(() => {
    //try to get the object
    
    const seeMoreButtons = document.querySelectorAll('.see-more'),
    popOver = document.querySelector('.popover');

    //  const waypoint = new Waypoint({
    //     element: document.getElementById('cheese2'),
    //      handler: function(direction) {
    //        console.log('Scrolled to waypoint!')
    //        this.element.innerHTML +=`
    //        <p>Parmesan Cheese! ${direction}</p>`;
    //      }
    //    })
    
    //   const waypoint2 = new Waypoint({
    //      element: document.getElementById('cheese3'),
    //      handler: function(direction) {
    //        console.log('Scrolled to waypoint!')
    //        this.element.innerHTML +=`
    //        <p>Swiss Cheese! ${direction}</p>`;
    //      }
    //    })

    //    const waypoint3 = new Waypoint({
    //     element: document.getElementById('cheese4'),
    //     handler: function(direction) {
    //       console.log('Scrolled to waypoint!')
    //       this.element.innerHTML +=`
    //       <p>Gouda Cheese! ${direction}</p>`;
    //     }
    //   })

        function buildPopover(cheesedata, el) {
         // debugger;
            popOver.querySelector(".cheese-name").textContent = cheesedata.Name;
            popOver.querySelector(".taste-description").textContent = `Taste: ${cheesedata.Taste}`;
            popOver.querySelector(".eat-description").textContent = `Eat With: ${cheesedata.EatWith}`;
            popOver.querySelector(".drink-description").textContent = `Drink With: ${cheesedata.DrinkWith}`;

            //show the popover
            popOver.classList.add('show-popover');
            el.parentElement.appendChild(popOver);

        }
    
      function fetchData() {
          let targetEl = this,
          url = `/svgdata/${this.dataset.target}`;

          fetch(url)
          .then(res => res.json())
          .then(data => {
              console.log(data);
              //populate the popover
              buildPopover(data, targetEl)
          })
          .catch((err) => console.log(err));
      }
    // const svgGraphic = document.querySelector(".svg-wrapper");
    
    // svgGraphic.addEventListener('click', function() {
    //     console.log(this);
    // })

    seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));
    })();