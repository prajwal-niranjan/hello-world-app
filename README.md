## 🏗 Architecture & Flow

### 1️⃣ Container Setup (System Overview)

```mermaid
graph TD
    A[Developer Machine] -->|docker-compose up| B[Docker Engine]
    B --> C[Hello-World App Container]
    C -->|Runs FastAPI| D[Exposes :8000]
    D --> E[Browser / API Client]

## 🔄 Request Flow (Sequence Diagram)

```mermaid
sequenceDiagram
    actor User
    participant Browser
    participant App as Hello-World App
    User->>Browser: Open http://localhost:8000
    Browser->>App: GET /
    App-->>Browser: 200 OK (Hello World!)
    Browser-->>User: Display "Hello World"
