// Scripts

document.querySelectorAll('.alert').forEach((alert) => {
    setTimeout(() => {
        alert.classList.add('fade-up');
        setTimeout(() => {
            alert.remove();
        }, 1000);
    }, 3000);
});