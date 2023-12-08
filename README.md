# StuddyBuddy: Your Personal AI Study Companion

StuddyBuddy is an iOS application designed to enhance your studying experience. It's not just a study tool, but your buddy who's always there to help you comprehend your learning materials better. This application comes with key functionalities such as PDF document uploads, flashcard generation, interactive Q&A and content search.

![mobile architecture](https://github.com/yesid-lopez/study-buddy-api/blob/main/assets/mobile%20architecture.svg)

## Table of Contents

- [Description](#description)
- [Getting Started](#getting-started)
- [Environment Variables](#environment-variables)
- [Backend Repository](#backend-repository)

## Description

StuddyBuddy has several key functionalities:

- **PDF Uploads**: StuddyBuddy allows you to upload any PDF document. The application creates embeddings from the document, saves them in a vector database, and also stores the PDF document, both in Redis. This is facilitated through the use of Prem AI, an intuitive desktop application designed to deploy and self-host Open-Source AI models without exposing sensitive data to third-party services.

<p align="center">
  <img src="https://media.giphy.com/media/6svISx2E2o1oJqxTXT/giphy.gif" alt="flashcards GIF">
</p>

- **Flashcard Generation**: The app can automatically generate flashcards with information from the PDF. The data retrieved from the embeddings are processed through Chat Vicuna, ensuring natural and accurate answers.

<p align="center">
  <img src="https://media.giphy.com/media/2F8UfzSeD6GGmXisuJ/giphy.gif" alt="flashcards GIF">
</p>

- **Interactive Q&A**: The 'Ask your buddy' functionality enables you to ask questions and extract information directly from your PDFs. It's akin to having a conversation with your book or a private tutoring session with the author. 

<p align="center">
  <img src="https://media.giphy.com/media/BocVOJVzKySmnZJO1w/giphy.gif" alt="questions GIF">
</p>

- **Semantic Search**: StuddyBuddy also includes a semantic search function that points you to the exact page where a particular topic is discussed. This isn't a simple 'ctrl+F'; it applies user intent and the meaning of words and phrases to find the most relevant content.

<p align="center">
  <img src="https://media.giphy.com/media/wFFdAwrhJYilQOk3iM/giphy.gif" alt="semantic search GIF">
</p>

## Getting Started

To get started with StuddyBuddy, follow the steps below:

1. Clone this repository: 
    ```
    git clone https://github.com/saradrada/studdy-buddy-ios.git
    ```

2. Navigate to the project directory: 
    ```
    cd StuddyBuddy
    ```

3. Install Xcode if not already done so. You can download it from the [Apple Developer website](https://developer.apple.com/xcode/).

4. Open the `StuddyBuddy.xcworkspace` file in Xcode.
    ```
    open StuddyBuddy.xcworkspace
    ```

5. Before running the application, make sure to start the backend service. Instructions on how to do this can be found in the backend repository.

6. In Xcode, press `CMD+R` to build and run the application in your chosen simulator.

## Environment Variables

Environment variables are set in the `EnvironmentVariables` file located under the 'EnvironmentVariables' folder. Here's a snippet of what you can expect to see:

```swift
import Foundation

enum EnvironmentVariables {
    enum API: String {
        case base = "http://localhost:8007"
    }

    enum Params: Int {
        case numberOfFlashcards = 4
    }
}
```

You can modify this endpoint as needed to run the app locally or with your own backend service and to specify the number of flashcards you want to generate. Be sure to have the backend running first, as the app will need to communicate with it.

We hope that you find StuddyBuddy to be a valuable tool for your learning journey. Happy studying!

## Backend Repository


You can check the implementation of our backend [here](https://github.com/yesid-lopez/study-buddy-api)
In our backend repository you can find more about: 
- API documentation
- Tools
- Mobile Client Architecture
- Infrastructure Architecture
- Prompt Engineering
- How to run the Study Buddy API

## Future Work

In our roadmap, we plan to implement a "Quiz Me" functionality. This feature will automatically generate quizzes with multiple choice questions based on the uploaded PDFs. This will not only help users assess their understanding and recall of the material but also provide an interactive and engaging way to evaluate their knowledge.

We would also like to implement models that requiere GPU. Currently, one of our restrictions is the cost of it but we will make it possible in the future.

## Highlights for Consideration

In developing StuddyBuddy, our team was guided by four principles:

1. **Creative Prompts**: We capitalized on the power of open-source models by crafting efficient, unique prompts, despite the lack of large-scale computational resources.

2. **Accessibility**: Our application runs smoothly on affordable, non-GPU hardware, reflecting our commitment to making AI technology accessible and privacy-conscious.

3. **Prem Services Integration**: We integrated all available Prem services at the moment (LLMs, Embeddings, and Vector stores) to create a coherent and efficient study tool.

4. **User-friendly Design**: StuddyBuddy is user friendy and intuitive, designed for ease of use across all generations.

Built during the Prem Challenge x LangChain hackathon, StuddyBuddy is a testament to our team's dedication to leveraging AI technology in creative and accessible ways, serving as an innovative tool for learners everywhere.


# study-buddy-ios
