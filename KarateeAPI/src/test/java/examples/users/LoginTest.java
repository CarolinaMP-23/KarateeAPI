package examples.users;

import com.intuit.karate.junit5.Karate;
public class LoginTest {
        Karate testLogin () {
        return Karate.run("login").relativeTo(getClass());

        }
}
