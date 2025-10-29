# Project 5 - Humans of New York Feed

Submitted by: **Gerald Shimo**

**Humans of New York Feed** is an iOS app that fetches and displays a scrolling list of blog posts from the **Humans of New York** Tumblr API. Each post shows a photo and a short summary of the story, allowing users to explore real human stories directly within a clean, minimalist table view.

Time spent: **6 hours** spent in total

---

## 🚀 Required Features

The following **required** functionality is completed:

- [x] App has a configured table view and custom table view cell  
- [x] App populates the table view with data fetched from the Tumblr API  

---

## 🌟 Optional Features

The following **optional** features are implemented:

- [] App fetches posts from the Humans of New York Tumblr blog  
- [] App uses the **NukeExtensions** library to asynchronously load and cache post images  

---

## 🎥 Video Walkthrough

<div>
    <a href="https://www.loom.com/share/05755f80cfe14fad8afb85cff676e371">
      <p>📹 Watch Demo on Loom</p>
    </a>
    <a href="https://www.loom.com/share/05755f80cfe14fad8afb85cff676e371">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/05755f80cfe14fad8afb85cff676e371-8d56a986c44de250-full-play.gif">
    </a>
</div>

---

## 🧩 Notes

### Challenges Encountered:
- Debugging why the table view showed a blank screen despite successful API calls — caused by missing storyboard connections (`dataSource` and `delegate`).  
- Ensuring that Tumblr’s optional `photos` array decoded correctly by making it optional in the data model.  
- Handling dynamic content sizing for varying post summaries using Auto Layout and `UITableView.automaticDimension`.

---

## 🪪 License
Copyright 2025 Gerald Shimo

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


