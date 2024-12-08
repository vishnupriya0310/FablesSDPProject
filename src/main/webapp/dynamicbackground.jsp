<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dynamic Background</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
    
    <script>
        // Array of background image URLs
        const images = [
            'images/thanjavur temple.jpg',
            'images/logo.png',
            'images/jaipur_palace.jpg',
            'images/agra_fort.jpg'
        ];

        // Function to randomly select an image
        function setRandomBackground() {
            const randomIndex = Math.floor(Math.random() * images.length);
            const selectedImage = images[randomIndex];
            document.body.style.backgroundImage = `linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url('${selectedImage}')`;
        }

        // Set random background on page load
        setRandomBackground();
    </script>
</body>
</html>
