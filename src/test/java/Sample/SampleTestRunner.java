package Sample;

import com.intuit.karate.junit5.Karate;

public class SampleTestRunner {


    @Karate.Test
    public Karate sampleTestRunner()
    {
        return Karate.run("sample")
                .relativeTo(getClass())
                .tags("@createUser");
    }
}
