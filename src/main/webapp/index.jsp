<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inspirational Personalities</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
        }

        h1 {
            font-size: 2.5em;
            color: #333;
            margin-bottom: 50px;
        }

        .personality-container {
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .personality-card {
            border: 2px solid #ccc;
            border-radius: 10px;
            width: 250px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .personality-card img {
            width: 100%;
            border-radius: 8px;
            cursor: pointer;
        }

        .personality-card:hover {
            transform: scale(1.05);
        }

        h3 {
            font-size: 1.2em;
            color: #333;
            margin-top: 10px;
        }

        .quote-container {
            text-align: left;
            margin-top: 30px;
        }

        .quote-container p {
            font-size: 1.2em;
            margin: 10px 0;
            font-style: italic;
        }

        button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1em;
            cursor: pointer;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 5px;
        }

        button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <div class="container" id="home-container">
        <h1>Inspirational Personalities</h1>
        <div class="personality-container">
            <!-- Image of first personality (e.g. Mahatma Gandhi) -->
            <div class="personality-card" onclick="showQuotes('gandhi')">
                <img src="mahatam.jpg" alt="Mahatma Gandhi">
                <h3>Mahatma Gandhi</h3>
            </div>

            <!-- Image of second personality (e.g. Dr. APJ Abdul Kalam) -->
            <div class="personality-card" onclick="showQuotes('kalam')">
                <img src="apj.jpeg" alt="APJ Abdul Kalam">
                <h3>APJ Abdul Kalam</h3>
            </div>
        </div>
    </div>

    <div class="container" id="quotes-container" style="display:none;">
        <h1>Inspirational Quotes</h1>
        <div id="quote-list" class="quote-container"></div>
        <button onclick="goBack()">Go Back</button>
    </div>

    <script>
        const quotes = {
            gandhi: [
                "Be the change that you wish to see in the world.",
                "The best way to find yourself is to lose yourself in the service of others.",
                "You must not lose faith in humanity. Humanity is an ocean; if a few drops of the ocean are dirty, the ocean does not become dirty."
            ],
            kalam: [
                "Dream, dream, dream. Dreams transform into thoughts, and thoughts result in action.",
                "You have to dream before your dreams can come true.",
                "Great dreams of great dreamers are always transcended."
            ]
        };

        function showQuotes(personality) {
            // Hide the homepage container and show the quotes container
            document.getElementById('home-container').style.display = 'none';
            document.getElementById('quotes-container').style.display = 'block';

            const quoteList = document.getElementById('quote-list');
            quoteList.innerHTML = `<h2>Quotes by ${personality.charAt(0).toUpperCase() + personality.slice(1)}</h2>`;

            // Add quotes for the selected personality
            quotes[personality].forEach(quote => {
                const quoteElement = document.createElement('p');
                quoteElement.textContent = `"${quote}"`;
                quoteList.appendChild(quoteElement);
            });
        }

        function goBack() {
            // Go back to the homepage
            document.getElementById('home-container').style.display = 'block';
            document.getElementById('quotes-container').style.display = 'none';
        }
    </script>
</body>
</html>
