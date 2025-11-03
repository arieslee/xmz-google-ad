---
title: "AI and Prototype Design"
disqus_identifier: "ai-and-prototype-design"
disqus_url: "https://xiaomizhou.net/2025-11-03/ai-and-prototype-design/"
date: 2025-11-03
description: "To be honest, generating prototypes directly from text is not very recommended. After all, language can hardly describe interface details accurately. Of course, interface design is not achieved overnight. It usually starts with text descriptions of the interface from clients or colleagues. We can first generate a preliminary interface prototype based on these descriptions, and then gradually iterate and optimize it."
tags: ["Text-to-prototype", "interface details", "preliminary prototype", "iteration and optimization", "AI-generated prototype", "simple text", "low precision requirement", "gpt-4o-mini", "requirement document", "interface description"]
author: ["Aries"]
cover:
    image: /images/uploads/cover-1762156938395.png
    hiddenInList: true
weight: 1
---

To be honest, generating prototypes directly from text is not very recommended. After all, language can hardly describe interface details accurately. Of course, interface design is not achieved overnight. It usually starts with text descriptions of the interface from clients or colleagues. We can first generate a preliminary interface prototype based on these descriptions, and then gradually iterate and optimize it.

AI is highly capable of generating interface prototypes from simple text. Because such tasks do not require high precision from the model, and the generated prototypes may be quickly replaced in iterations. Therefore, even models with relatively weak performance (such as gpt-4o-mini) can handle it.

For example, we can extract a section of interface description from the requirement document and hand it over to AI for processing.
## Text-to-Prototype
```
The system displays the book storage interface, which includes the following information entry fields:
1. Book ISBN/ISSN
2. Book Title
3. Author
4. Publisher
5. Publication Date
6. Book Category
7. Book Price
8. Quantity of Books
9. Book Storage Location
10. Book Cover Image (optional)
11. Book Introduction (optional)
```
![book.png](/images/uploads/editor-1762156169305.png)
The results look quite good. Based on this prototype, we can further communicate with clients and colleagues to develop a more accurate interface prototype.

## Screenshot to Prototype
Generating prototypes from screenshots should be the mainstream way of AI-powered prototype generation. When developing a product, we often draw inspiration from mature products, obtain their screenshots, and process them with AI. With the increasing capabilities of multimodal large models, this has become a very reliable option. We can first take a look at the results.
Reference product screenshots
![image-20250304140827307.png](/images/uploads/editor-1762156270115.png)


You are a skilled developer proficient in HTML, JavaScript, CSS, and TailwindCSS. Please create a web page according to the following requirements: use Font Awesome icons, ensure the page design is beautiful and responsive, and include the necessary HTML structure and styles.
```
You are a skilled developer proficient in HTML, JavaScript, CSS, and TailwindCSS. Please create a web page according to the following requirements: use Font Awesome icons, ensure the page design is beautiful and responsive, and include the necessary HTML structure and styles.
```

I'm using `gemini-2.0-pro`. Let's take a look at the generated results.
![PixPin_2025-11-03_15-52-21.png](/images/uploads/editor-1762156354115.png)

## Hand-Drawn to Prototype
In real work scenarios, there is another widely existing situation—describing interfaces through hand-drawn sketches during discussions. This method is far better than describing via text. With the application of multimodal large models, it can also yield good results.
Here, I have created a simple diagram using draw.io.
![image-20250304141413681.png](/images/uploads/editor-1762156702058.png)

Using `gemini-2.0-pro` with the aforementioned prompt, I personally believe it has highly reproduced the design draft.
![PixPin_2025-11-03_16-00-57.png](/images/uploads/editor-1762156868059.png)

> Are these three methods above quite good?