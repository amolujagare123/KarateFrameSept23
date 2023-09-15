package DeckOfCards;

import com.intuit.karate.junit5.Karate;

public class DeckOfCards {

    @Karate.Test
    public Karate TestDeckOfCards()
    {
        return Karate.run("DeckOfCards")
                .relativeTo(getClass());
    }
}
