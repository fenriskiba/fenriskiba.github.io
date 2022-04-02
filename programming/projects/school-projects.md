# School Projects
These are a few projects from college that I found interesting/notable.

## Seam Carving
**Course:** Algorithms  
**Git Repo:** [fenriskiba/SeamCarving-AlgorithmsProject](https://github.com/fenriskiba/SeamCarving-AlgorithmsProject)

**Description:** In my algorithms class, we were assigned to create a console app to perform [seam carving](https://en.wikipedia.org/wiki/Seam_carving) on a simple grey-scale bitmap image. Seam carving is a content-aware image resizing algorithm, that assigns weights to each pixel based on how similar it is to the pixels around it and removes a the line (aka a "seam") of connected pixels with the lowest weight.  
While this is a fairly simple application of it, I found this algorithm and the full scale applications of it rather incredible.

## RSA Encryption
**Course:** Algorithms  
**Git Repo:** [fenriskiba/RSA_Encryption-AlgorithmsProject](https://github.com/fenriskiba/RSA_Encryption-AlgorithmsProject)

**Description:** A simple [RSA Encryption/Decryption](https://en.wikipedia.org/wiki/RSA_(cryptosystem)) app I wrote for my algorithms class. It was an interesting look into the mathematics of computer encryption. While it isn't directly applicable, I feel it helped me understand the kind of logic used in some of my more recent work understanding the intricacies of OAuth 2.0 and JWT Authorization.

## C++ JSON Parser
**Course:** Object-Oriented Programming  
**Git Repo:** [fenriskiba/JSON_Parser-OOP_Project](https://github.com/fenriskiba/JSON_Parser-OOP_Project)

**Description:** An assignment for my Object-Oriented Programming class was to create a library for JSON structured data in C++ and parse a JSON object into an object from the library.  
The library consists of a virtual JSON Value class, which all other JSON types (object, array, string, etc.). Each JSON type also either inherits from an equivalent C++ class or contains a `value` member containing the data of the JSON element.  
This was a challenging project adapting loosely typed data into a strictly typed language, and I am rather happy with the resulting JSON for C++ library.

## Magic: The Gathering - Sealed Simulator
**Course:** Senior Seminar in Computer Science  
**Git Repo:** [fenriskiba/MtG-SealedSimulator](https://github.com/fenriskiba/MtG-SealedSimulator)

**Description:** For my Senior Seminar, we were assigned to create a project we could present at the University of Akron Student Innovation Symposium (UASIS). I chose to create a project to randomly generate potential packs of Magic: The Gathering cards to allow users to simulate and practice creating deck in [Limited Formats](https://mtg.fandom.com/wiki/Limited).  
As part of the project, I chose to learn Python and the Django web development framework to allow for a unified codebase with both the logic and UI. I had found APIs to provide the data and images of the cards to display, collected feedback from potential users online, and planned out a series of potential releases.  
I completed the first version of the app, which would simply generate a random pack using cards from an expansion pack selected by the user and was able to present this initial version at UASIS.