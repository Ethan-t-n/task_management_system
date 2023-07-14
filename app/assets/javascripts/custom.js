document.addEventListener('DOMContentLoaded', function () {
    var body = document.querySelector('body');
    var colors = ['background-color-1', 'background-color-2', 'background-color-3', 'background-color-4', 'background-color-5'];
    var currentIndex = 0;

    function changeBackgroundColor() {
        body.classList.remove(colors[currentIndex]);
        currentIndex = (currentIndex + 1) % colors.length;
        body.classList.add(colors[currentIndex]);
    }

    setInterval(changeBackgroundColor, 3000);
});