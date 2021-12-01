const container = document.querySelector('.container');
const seats = document.querySelectorAll('.row .seat:not(.occupied)');
const count = document.getElementById('count');
const total = document.getElementById('total');
const movieSelect = document.getElementById('movie');

let ticketPrice = +movieSelect.value;

//Update total and count
function updateSelectedCount() {
    const selectedSeats = document.querySelectorAll('.row .seat.selected');
    const selectedSeatsCount = selectedSeats.length;
    count.innerText = selectedSeatsCount;
    total.innerText = selectedSeatsCount * ticketPrice;
}

//Movie Select Event
movieSelect.addEventListener('change', e => {
    ticketPrice = +e.target.value;
    updateSelectedCount();
});


function addText(text, classList) {
    var my_val = document.getElementById("textarea_seats").value;

    var is_selected = classList.contains('selected');
    if (is_selected) {
        document.getElementById("textarea_seats").value += text;
    } else {
        my_val = my_val.replace(text, '');
        document.getElementById("textarea_seats").value = my_val;
    }

}

//Seat click event
container.addEventListener('click', e => {
    if (e.target.classList.contains('seat') &&
        !e.target.classList.contains('occupied')) {
        e.target.classList.toggle('selected');
    }

    if (e.target.parentElement.classList.contains('seat') &&
        !e.target.parentElement.classList.contains('occupied')) {
        e.target.parentElement.classList.toggle('selected');
    }


    updateSelectedCount();

   var my_id
    if (e.target.id) {
        my_id = e.target.id + ',';
        addText(my_id, e.target.classList);
    }

    if (e.target.parentElement.id) {
        my_id = e.target.parentElement.id + ',';
        addText(my_id, e.target.parentElement.classList);
    }

});