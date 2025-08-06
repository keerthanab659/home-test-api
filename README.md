**🧪 Take Home API Test - Karate Framework**

The purpose of this project is to automate test scenarios for an inventory-based API hosted on Docker, using the Karate BDD testing framework along with Java and Maven.

---

**✅ Prerequisites**

- Java 8 or higher
- Maven
- Git
- IDE - Visual Studio Code/Eclipse/Intellije

**🗂️ Framework-structure**

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
|               │   ├── addNewInventoryItem.
│               │   ├── filterByInventory.json
│               │   ├── missingInfo.json
│               └── inventoryTestRunnner.java
├── karate-config.js
├── pom.xml
└── README.md
```

---

**📘 Usage Guidelines**

**Clone the Repository**

```bash
git clone https://github.com/your-username/home-test-api.git
cd home-test-api
```

**Run the Docker file**

1.Pull the docker image containing the api **docker pull automaticbytes/demo-app**
2.Run the image **docker run -p 3100:3100 automaticbytes/demo-app**
3.Verify the api is up and set it as the base url for the tests **http://localhost:3100/api**

---

**🚀 Test Execution**

### Run Tests by inventoryTestRunner(Runner File)

```bash
mvn clean 
``` 

```bash
mvn test "-Dtest=inventoryTestRunner -Dkarate.options="classpath:inventoryapi/features"
```


**Run Tests by Feature File**

```bash
mvn test "-Dtest=inventoryTestRunner -Dkarate.options="classpath:inventoryapi/features/addExistentId.feature"
```

---

**📂 Reports**

Sample reports are stored inside the **reports** folder.


**✅ Feature Files Overview**

| **Feature File Name**             | **Purpose of the Feature File**          |
| --------------------------------- | ---------------------------------------- |
| `addExistentID.feature`           | Attempt to add an existing ID            |
| `addMissingInventoryItem.feature` | Add an item with missing mandatory field |
| `addNewInventoryItem.feature`     | Add a new item to the inventory          |
| `filterByInventoryItem.feature`   | Filter the inventory item by ID          |
| `getAllInventoryItem.feature`     | Get all available inventory items        |
| `validateInventoryItem.feature`   | Validate the newly added inventory       |

---

**🧾 Test Data**

| **File Name**              | **Description**                       |
| -------------------------- | ------------------------------------- |
| `addNewInventoryItem.json` | New data with a valid request payload |
| `filterByInventory.json`   | Request payload to filter item by ID  |
| `missingInfo.json`         | Payload missing mandatory fields      |


---

**⚙️ Karate-Configuration**

-The karate-config.js file is used to define the base URL and other dynamic configuration settings.

-It can be extended to support multiple environments such as dev, qa, and others.

---