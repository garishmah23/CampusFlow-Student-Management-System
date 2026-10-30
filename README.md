# CI/CD Automation Demo

A Spring Boot Student Management REST API created as the base application for Experiments 3.2.1 (Continuous Integration) and 3.2.2 (Continuous Deployment).

## Technology Stack

- Java 25 (LTS)
- Spring Boot 3.5.6
- Maven
- Spring Web
- Bean Validation
- JUnit 5 / Spring Boot Test

## Current API

| Method | Endpoint | Purpose |
|---|---|---|
| GET | `/api/students` | Returns the sample student list |

## Run in VS Code

1. Open this folder in VS Code.
2. Make sure JDK 25 is installed.
3. Open the terminal in the project folder.
4. Run the Maven command available on your computer:

```bash
mvn spring-boot:run
```

5. Open `http://localhost:8080/api/students` in your browser.

<img width="1917" height="936" alt="Screenshot 2026-10-30 120027" src="https://github.com/user-attachments/assets/5bb97db4-b6b1-4437-97dc-88c7bbadf658" />

<img width="1896" height="911" alt="Screenshot 2026-10-30 122314" src="https://github.com/user-attachments/assets/87f835f1-563f-400f-a800-2fff7f31e0cf" />

<img width="635" height="192" alt="Screenshot 2026-10-30 122403" src="https://github.com/user-attachments/assets/3e4126e2-4e15-40ca-ad6b-77add0b1cbf7" />



> This project includes a Windows Maven bootstrap script (`mvnw.cmd`). On first run, it downloads Apache Maven 3.9.11 into the project `.mvn` folder, then runs the requested Maven command. No separate Maven installation is required. An internet connection is needed for the first run.

## Run tests

```bash
mvn test
```

## Planned experiment work

- CI workflow with automated build and tests
- Unit, integration, and contract testing
- Docker image build
- GitHub Actions deployment workflow
- Canary deployment demonstration
