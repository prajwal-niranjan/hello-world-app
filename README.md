## 🏗 Architecture & Flow

### 1️⃣ Container Setup (System Overview)

```mermaid
graph TD
    A[Developer Machine] -->|docker-compose up| B[Docker Engine]
    B --> C[Hello-World App Container]
    C -->|Runs FastAPI| D[Exposes :8000]
    D --> E[Browser / API Client]

    ### Update
Test commit to trigger CI/CD workflow


