# Learning-everything

Learning-everything is a local web app for turning Markdown study notes into reviewable learning cards. It is designed for English learning, technical notes, interview preparation, AI prompts, and any knowledge base that benefits from spaced review.

The project is centered around a single-page `index.html` app. It loads Markdown files, organizes them into cards and categories, tracks review progress, and provides a prompt manager for reusable study workflows. Review data is stored in the browser with `localStorage`. In browsers that support the File System Access API, you can connect a local folder and save Markdown edits back to disk.

![Dashboard overview](assets/截圖%202026-06-06%20晚上8.21.48.png)

## Features

- **Markdown study cards**: Load `.md` files as readable, editable, reviewable learning cards.
- **Review dashboard**: See overdue cards, cards due today, upcoming reviews, and daily progress at a glance.
- **Spaced repetition**: Rate each review from 1 to 5 and automatically schedule the next review date.
- **Categories**: Organize cards by folder or inferred path-based category.
- **Card list view**: Review all cards in a table with status, progress, last review, and next review dates.
- **Prompt manager**: Store reusable AI prompts for learning, speaking practice, interviews, writing, and note transformation.
- **Local folder workflow**: Import a Markdown folder, create new cards, edit existing notes, and save changes locally.

## Screenshots

### Dashboard

The dashboard shows the total number of cards, cards due today, cards reviewed today, and long-term review streaks. It groups cards by review timing so you can immediately see what needs attention.

![Dashboard](assets/截圖%202026-06-06%20晚上8.21.48.png)

### Card Lists

The card list view gives you a compact overview of every card, including category, review status, review count, streak, interval, last review date, and next review date.

![Card lists](assets/截圖%202026-06-06%20晚上8.23.08.png)

### Card Reader

The card reader renders Markdown into a clean reading view. After reviewing a card, use the 1-5 rating buttons at the bottom to update its spaced repetition schedule.

![Card reader](assets/截圖%202026-06-06%20晚上8.23.38.png)

### Prompts

The prompts view lets you save reusable AI prompts and organize them by category. This is useful for turning the same study card into speaking practice, writing feedback, interview drills, or vocabulary review.

![Prompts](assets/截圖%202026-06-06%20晚上8.23.23.png)

## How to Use

1. Open `index.html` in your browser.
2. Click `Connect Folder` and select a folder that contains your Markdown notes.
3. Select a card from the sidebar, dashboard, or card list.
4. Read the card and rate your review from 1 to 5.
5. Use `Edit` when you want to update the Markdown content, then save it back to the original file.

You can also load a single Markdown file by entering its filename in the sidebar and clicking `Load Single File`.

## Markdown Note Format

Each learning card is a Markdown file. A note can include front matter for learning metadata:

```yaml
---
tags:
  - EnglishLearning
Last reviewed: May 25, 2026
Next review: May 28, 2026
---
```

The main content can be structured however you like:

```md
# 6 Minute English - Making cities feel quieter

https://www.bbc.co.uk/learningenglish/english/features/6-minute-english_2026/ep-260521

1. Exposure to loud noise has been linked to stress and anxiety.
2. Soundscaping is the idea of adding certain sounds to busy public spaces.
3. Counterintuitive means something happens differently from how you would expect.
```

## Project Structure

```text
.
├── README.md
├── index.html
├── cards.json
├── gen-cards.sh
├── assets/
│   ├── 截圖 2026-06-06 晚上8.21.48.png
│   ├── 截圖 2026-06-06 晚上8.23.08.png
│   ├── 截圖 2026-06-06 晚上8.23.23.png
│   └── 截圖 2026-06-06 晚上8.23.38.png
└── english/
    └── 6 minunte english - Making cities feel quieter.md
```

## File Overview

- `index.html`: Main app file, including the UI, Markdown rendering, review scheduling, folder import, card editing, and prompt manager.
- `cards.json`: Optional manifest used to auto-load Markdown files when the page starts.
- `gen-cards.sh`: Helper script for regenerating `cards.json` from Markdown files.
- `english/`: Example folder for English learning notes.
- `assets/`: Screenshots used in this README.

## Suggested Workflow

1. Create a new Markdown note for each topic you want to study.
2. Place notes into a category folder, such as `english/`.
3. Open Learning-everything and connect the folder.
4. Start each study session from the dashboard.
5. Save useful AI study prompts in the Prompts view so you can reuse them across cards.


