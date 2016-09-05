package authorization;

import com.segvek.taskmanager.service.ParserManager;
import com.segvek.taskmanager.service.impl.ParserManagerImpl;
import javax.xml.parsers.ParserConfigurationException;
import org.junit.Test;
import org.xml.sax.SAXException;

public class Authorization {

    ParserManager parser;
    String request, respone, responceTrue;

    public Authorization() throws ParserConfigurationException, SAXException {
        this.parser = new ParserManagerImpl();
    }

    @Test
    public void test2() throws Exception {
        request = parser.parse("<request>"
                + "    <!--Пример запроса на авторизацию-->"
                + "    <authorization>"
                + "        <name>ebtb</name>"
                + "        <hashPass>sdfvrf</hashPass>"
                + "    </authorization>"
                + "</request>");
        System.out.println(request);
    }

}
