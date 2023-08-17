package examples.users;

import com.intuit.karate.junit5.Karate;
class SignupTest {

    Karate testSignup () {
        return Karate.run("signup").relativeTo(getClass());

    }
}

