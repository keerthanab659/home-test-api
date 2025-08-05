# 🧪 Home Test API - Karate BDD Framework

The purpose of this project is to automate test scenarios for an inventory-based API hosted on Docker, using the Karate BDD testing framework along with Java and Maven.

---

## 📁 Project Structure

```
home_test_api/
├── reports/
├── src/
│   └── test/
│       └── java/
│           └── inventoryapi/
│               ├── features/
│               │   ├── addExistentID.feature
│               │   ├── addInventory.feature
│               │   ├── addMissingInventory.feature
│               │   ├── filterInventory.feature
│               │   ├── getInventory.feature
│               │   └── validateInventory.feature
│               ├── testData/
│               │   ├── addInventory.json
│               │   ├── filterInventory.json
│               │   ├── missingInfo.json
│               └── InventoryTest.java
├── karate-config.js
├── pom.xml
└── README.md
```

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/home-test-api.git
cd home-test-api
```

### 2. Start the API Using Docker

```bash
docker pull automaticbytes/demo-app
docker run -p 3100:3100 automaticbytes/demo-app
```

- The API will now be accessible at:  
  **`http://localhost:3100/api`**

---

### 🧰 Prerequisites

- Java 8 or higher
- Maven installed (`mvn -v`)
- Git + GitHub
- IDE (e.g., IntelliJ IDEA)
- Internet (for Maven dependencies)

## ▶️ How to Run Tests

### ✅ Run Tests by inventoryTest(Runner File)

```bash
mvn clean 
``` 

```bash
mvn test "-Dkarate.options=classpath:inventoryapi/features"
```

Run all 6 inventory tests features:

### ✅ Run Tests by Feature File

```bash
mvn test "-Dkarate.options=classpath:inventoryapi/features/addExistentId.feature"
```

---

## 📦 Reports

Sample reports are stored inside the `reports/` directory.


## 📑 Test Scenarios Covered

Each `.feature` file in `inventoryapi/features` covers a specific functionality of the Inventory API:

| Feature File                  | Purpose                                          |
|-------------------------------|--------------------------------------------------|
| `addExistentID.feature`       | Attempt to add an existing ID                    |
| `addInventory.feature`        | Add a new item to the inventory                  |
| `addMissingInventory.feature` | Add a item with missing mandatory fields         |
| `filterInventory.feature`     | Filter inventory by ID                           |
| `getInventory.feature`        | Get all available inventory items                |
| `validateInventory.feature`   | Validate the newly added ID is present           |

---

## 🧾 Test Data

Test data files are available under `inventoryapi/testData/`:

| File                   | Description                                 |
|------------------------|---------------------------------------------|
| `addInventory.json`    | New data with a valid request payload       |
| `filterInventory.json` | Filter by ID request payload                |
| `missingInfo.json`     | Mandatory field is missing in the payload   |

---

## ⚙️ Configuration

- `karate-config.js` sets the base URL and dynamic config options.
- You can extend this file to support multiple environments like `dev`, `qa`, etc.

---

## 🛠️ Tools Used

- [Karate DSL](https://github.com/karatelabs/karate) – API test automation
- [JUnit 5](https://junit.org/) – Test runner
- [Apache Maven](https://maven.apache.org/) – Build tool
- [Docker](https://www.docker.com/) – For running the API locally
- Git + GitHub – Version control and sharing

---