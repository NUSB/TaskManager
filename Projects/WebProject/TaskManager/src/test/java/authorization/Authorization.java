package authorization;

import com.segvek.taskmanager.service.ParserManager;
import com.segvek.taskmanager.service.util.SpringUtil;
import javax.xml.parsers.ParserConfigurationException;
import org.junit.Test;
import org.xml.sax.SAXException;

public class Authorization {

    ParserManager parser;
    String request, respone, responceTrue;

    public Authorization() throws ParserConfigurationException, SAXException {
        Object tempObj = SpringUtil.getInstance().getBean("prserManager");
        if (tempObj instanceof ParserManager) {
            this.parser = (ParserManager) tempObj;
        } else {
            throw new ExceptionInInitializerError("not equals type");
        }
    }

    @Test
    public void test2() throws Exception {
        request = parser.parse("<request>"
                + "    <!--Пример запроса на авторизацию-->"
                + "    <authorization>"
                + "        <name>123</name>"
                + "        <hashPass>42fc5a0744db9610aafee78678b1c6de</hashPass>"
                + "    </authorization>"
                + "</request>");
        System.out.println(request);
    }

    @Test
    public void test3() throws Exception {
        request = parser.parse("<request>"
                + "    <!--Пример запроса на авторизацию-->"
                + "    <authorization>"
                + "        <name>123</name>"
                + "        <hashPass>42fc5a0744db9610aafee78678b1c6de</hashPass>"
                + "    </authorization>"
                + "</request>");
        System.out.println(request);
    }
}
