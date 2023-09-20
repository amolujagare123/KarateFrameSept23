package JobPortal;

import com.intuit.karate.junit5.Karate;

public class JobPortal {

    @Karate.Test
    public Karate runJobPortal()
    {
        return Karate.run("JobPortal2")
                .relativeTo(getClass())
                .tags("@jsonInput");
    }
}
