package petstore;

import com.intuit.karate.junit5.Karate;

class PetStoreRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("petstore").relativeTo(getClass());
    }    

}
