---
title: MCP_Research_Server
app_file: research_server.py
sdk: gradio
sdk_version: 5.31.0
---
# 🧠 FastMCP SSE Server – Research Paper Agent

This project is a deployable **MCP-compatible remote server** built using the `FastMCP` framework. It exposes tools and resources for:

- Searching academic papers on **arXiv**
- Extracting information about saved papers
- Generating structured prompts for Claude or other LLM agents

It is designed to work with **Claude, GPT, or any MCP client** that supports `SSE` transport.

---

## 🌐 Live Server

✅ **MCP server is running here:**  
**Tool URL (SSE):** [`https://mcp-server-vs1x.onrender.com/sse`](https://mcp-server-vs1x.onrender.com/sse)

To test if it’s working, simply visit the link above — you’ll see a plain text confirmation.

<img width="496" alt="image" src="https://github.com/user-attachments/assets/90fc6c84-a7af-4f73-9e7e-fce36f7234e5" />


---

## 🚀 Features

- `search_papers(topic)`: Search and save top arXiv papers by topic
- `extract_info(paper_id)`: Retrieve paper details from stored JSON
- `get_topic_papers(topic)`: Read summaries for all papers in a topic
- `get_available_folders()`: List all saved topic folders
- **Prompt template** for Claude to generate full topic reports

---

## 🧑‍💻 Project Structure

```bash
.
├── research_server.py        # Main FastMCP server
├── Dockerfile                # For deployment on Render
├── pyproject.toml            # Python project setup (required by uv)
├── uv.lock                   # Dependency lock file (required by uv)
├── papers/                   # Local storage for downloaded paper info
```

---

## 📦 Requirements

- Python 3.11+
- [uv](https://github.com/astral-sh/uv): A fast Python package manager
- [Render.com](https://render.com) (for deployment)

---

## 🛠️ Local Setup (Optional)

```bash
git clone https://github.com/YOUR_USERNAME/mcp-sse-server.git
cd mcp-sse-server

# Run with uv (you must have uv installed)
uv pip install --system .
uv run research_server.py
```

The server will run on `localhost:8001/sse`.

---

## ☁️ Deploy on Render.com (Docker)

1. Push this project to your GitHub
2. Create a new web service on Render
3. Use the following settings:
   - **Environment:** Docker
   - **Port:** 8001
   - **Start command:** (leave blank – handled in Dockerfile)
4. Deploy 🚀

Render will give you a URL like:
```
https://your-app-name.onrender.com/sse
```

**To run locally in Docker:**

```bash
docker run -p 8001:8001 <your-image-name> python research_server.py
```

---

## 🧪 Test with MCP Inspector

Install and run:

```bash
npx @modelcontextprotocol/inspector
```

In the web UI:
- **Transport:** SSE
- **URL:** `https://mcp-server-vs1x.onrender.com/sse`

You’ll now be able to call the tools and test them live using Claude or your own chatbot.

![Uploading ui.png…]()

---

## 📚 Credits

Built as part of the DeepLearning.AI Claude Agent Systems course.
