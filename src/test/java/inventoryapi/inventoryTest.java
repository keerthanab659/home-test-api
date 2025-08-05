package inventoryapi;

import com.intuit.karate.junit5.Karate;

public class inventoryTest {

    @Karate.Test
    Karate testInventory() {
        return Karate.run("classpath:inventoryapi/features");
    }
}
