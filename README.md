# 🧪 Take Home API Test - Karate Framework

The purpose of this project is to automate test scenarios for an inventory-based API hosted on Docker, using the Karate BDD testing framework along with Java and Maven.

---

## ✅ Prerequisites

- Java 8 or higher
- Maven
- Git
- IDE - Visual Studio Code/Eclipse/IntelliJ

---

## 🗂️ Framework Structure

```
home_test_api/
├── reports/
├── src/
│   └── test/
│       └── java/
│           └── inventoryapi/
│               ├── features/
│               │   ├── addExistentID.feature
│               │   ├── addMissingInventoryItem.feature
│               │   ├── addNewInventoryItem.feature
│               │   ├── filterByInventoryItem.feature
│               │   ├── getAllInventoryItem.feature
│               │   └── validateInventoryItem.feature
│               ├── testData/
│               │   ├── addNewInventoryItem.json
│               │   ├── filterByInventory.json
│               │   ├── missingInfo.json
│               └── inventoryTestRunner.java
├── karate-config.js
├── pom.xml
└── README.md
```

---

## 📘 Usage Guidelines

**Clone the Repository**

```bash
git clone https://github.com/your-username/home-test-api.git
cd home-test-api
```

**Run the Docker file**

1. Pull the docker image containing the api
   ```bash
   docker pull automaticbytes/demo-app
   ```

2. Run the image
   ```bash
   docker run -p 3100:3100 automaticbytes/demo-app
   ```

3. Verify the api is up and set it as the base url for the tests
   ```
   http://localhost:3100/api
   ```

---

## 🚀 Test Execution

**Run Tests by File explorer or in Terminal**

1. Navigate to Project Directory then run test
   ```bash
   mvn clean
   ```
   ```bash
   mvn compile
   ```
   ```bash
   mvn test -Dtest=inventoryTestRunner
   ```

**Run Tests by inventoryTestRunner (Runner File)**

**1. Open your inventoryTestRunner.java file**
   You should see a "Run Test/Run Java" button on top right side
   Click on that "Run Test" button

**2. Right-click on Method**
   Right-click directly on the testInventory() method name
   Select "Run Test" from the context menu

**3. Right-click on Class**
   Right-click on the class name inventoryTestRunner
   Select "Run Test" from the context menu

---

## 📂 Reports

Sample reports are stored inside the **reports** folder.

---

## ✅ Feature Files Overview

| **Feature File Name**             | **Purpose of the Feature File**          |
| --------------------------------- | ---------------------------------------- |
| `addExistentID.feature`           | Attempt to add an existing ID            |
| `addMissingInventoryItem.feature` | Add an item with missing mandatory field |
| `addNewInventoryItem.feature`     | Add a new item to the inventory          |
| `filterByInventoryItem.feature`   | Filter the inventory item by ID          |
| `getAllInventoryItem.feature`     | Get all available inventory items        |
| `validateInventoryItem.feature`   | Validate the newly added inventory       |

---

## 🧾 Test Data

| **File Name**              | **Description**                       |
| -------------------------- | ------------------------------------- |
| `addNewInventoryItem.json` | New data with a valid request payload |
| `filterByInventory.json`   | Request payload to filter item by ID  |
| `missingInfo.json`         | Payload missing mandatory fields      |

---

## ⚙️ Karate Configuration

- The karate-config.js file is used to define the base URL and other dynamic configuration settings.
- It can be extended to support multiple environments such as dev, qa, and others.framework
---