**Take Home API Test - Karate Framework**

The purpose of this project is to automate test scenarios for an inventory-based API hosted on Docker, using the Karate BDD testing framework along with Java and Maven.

---

***Prerequisites***

- Java 8 or higher
- Maven 
- Git
- IDE - Eclipse/Intellije/VS Code

**Framework-structure**

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
│               │   ├── addExistentId.json
|               │   ├── addNewInventoryItem.
│               │   ├── filterByInventory.json
│               │   ├── missingInfo.json
│               └── inventoryTestRunnner.java
├── karate-config.js
├── pom.xml
└── README.md
```

---

**Usage Guidelines**

**1. Clone the Repository**

```bash
git clone https://github.com/your-username/home-test-api.git
cd home-test-api
```

**2. Run the Docker file**

```bash
docker pull automaticbytes/demo-app
docker run -p 3100:3100 automaticbytes/demo-app
```

- The API will now be accessible at:  
  **`http://localhost:3100/api`**

---

**Test Execution**

### Run Tests by inventoryTestRunner(Runner File)

```bash
mvn clean 
``` 

```bash
mvn test "-Dkarate.options=classpath:inventoryapi/features"
```

Run all 6 inventory tests features:

**Run Tests by Feature File**

```bash
mvn test "-Dkarate.options=classpath:inventoryapi/features/addExistentId.feature"
```

---

**Reports**

Sample reports are stored inside the `reports/` directory.


**Test Cases**

Each `.feature` file in `inventoryapi/features` covers a specific functionality of the Inventory API:

| Feature File Names                | Purpose of the Featur File                      |
***************************************************************************************
| `addExistentID.feature`           | Attempt to add an existing ID                   |
| `addMissingInventoryItem.feature` | Add a item with missing mandatory field         |
| `addNewInventoryItem.feature`     | Trying to add new item to the inventory         |
| `filterByInventoryItem.feature`   | Filter the inventory item by ID                 |
| `getAllInventoryItem.feature`     | Get all available inventory item                |
| `validateInventoryItem.feature`   | Validate the newl ID is present in Inventory    |

---

**Test Data**

Test data files are available under `inventoryapi/testData/`:

| File                        | Description                                 |
*****************************************************************************
| `addExistentId.json`        | Add item for existent id                    |
| `addNewInventoryItem.json`  | New data with a valid request payload       |
| `filterByInventory.json`    | Filter by ID request payload                |
| `missingInfo.json`          | Mandatory field is missing in the payload   |

---

**Karate-Configuration**

-The karate-config.js file is used to define the base URL and other dynamic configuration settings.

-It can be extended to support multiple environments such as dev, qa, and others.

---
