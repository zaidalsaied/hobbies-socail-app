package com.hobbyHub;


import com.hobbyHub.hobby.Hobby;
import com.hobbyHub.hobby.HobbyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class FirstTimeInitializer implements CommandLineRunner {

    @Autowired
    private HobbyService hobbyService;

    @Override
    public void run(String... args) throws Exception {

        // Check if we have hobbies
        // if no hobbies exist, create some.

        Hobby chess = new Hobby("Chess", "Chess is a two-player strategy board game played on a checkered board with 64 squares arranged in an 8×8 square grid. Played by millions of people worldwide, chess is believed to be derived from the Indian game chaturanga sometime before the 7th century."
                                , "/assets/img/chess_background.jpg");

        Hobby reading = new Hobby("Reading", "Reading is the complex cognitive process of decoding symbols to derive meaning. It is a form of language processing. Success in this process is measured as reading comprehension. Reading is a means for language acquisition, communication, and sharing information and ideas."
                , "/assets/img/reading.jpg");

        Hobby cooking = new Hobby("Cooking", "Cooking or cookery is the art, science and craft of using heat to prepare food for consumption. Cooking techniques and ingredients vary widely across the world, from grilling food over an open fire to using electric stoves, to baking in various types of ovens, reflecting unique environmental, economic, and cultural traditions and trends.\n" +
                "\n" +
                "Types of cooking also depend on the skill levels and training of cooks. Cooking is done both by people in their own dwellings and by professional cooks and chefs in restaurants and other food establishments. Cooking can also occur through chemical reactions without the presence of heat, such as in ceviche, a traditional South American dish where fish is cooked with the acids in lemon or lime juice or orange juice.\n" +
                "\n"
                , "/assets/img/cooking.jpg");

        Hobby writing = new Hobby("Writing", "Writing is a medium of human communication that involves the representation of a language with symbols. Writing systems are not themselves human languages; they are means of rendering a language into a form that can be reconstructed by other humans separated by time and/or space."
                , "/assets/img/writing.jpg");

        Hobby traveling = new Hobby("Traveling", "Travel is the movement of people between distant geographical locations. Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, and can be one way or round trip.[1][2] Travel can also include relatively short stays between successive movements, as in the case of tourism."
                , "/assets/img/traveling.jpg");

        Hobby coding = new Hobby("Coding", "Coding is the process of designing and building an executable computer program to accomplish a specific computing result or to perform a specific task."
                , "/assets/img/coding.jpg");

        hobbyService.updateHobby(chess);
        hobbyService.updateHobby(reading);
        hobbyService.updateHobby(cooking);
        hobbyService.updateHobby(writing);
        hobbyService.updateHobby(traveling);
        hobbyService.updateHobby(coding);

    }
}
