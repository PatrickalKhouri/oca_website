const flatPickerJs = () => {

const checkInInput = document.getElementById('booking_check_in');
const checkOutInput = document.getElementById('booking_check_out');

// Check that the query selector id matches the one you put around your form.
if (checkInInput) {
const unavailableDates = JSON.parse(document.querySelector('#apartment-booking-dates').dataset.unavailable)
checkOutInput.disabled = true

flatpickr(checkInInput, {
  minDate: "today",
  disable: unavailableDates,
  dateFormat: "Y-m-d",
});

console.log('im in the file')

checkInInput.addEventListener("change", (e) => {
  if (checkInInput != "") {
    checkOutInput.disabled = false
  }
  flatpickr(checkOutInput, {
    minDate: e.target.value,
    disable: unavailableDates,
    dateFormat: "Y-m-d"
    });
  })
};
};

export { flatPickerJs };