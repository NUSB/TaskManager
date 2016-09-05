package com.segvek.taskmanager.service.impl;

import com.segvek.taskmanager.service.GlobalParser;
import com.segvek.taskmanager.service.ParserManager;
import com.segvek.taskmanager.service.util.SpringUtil;
import com.segvek.taskmanager.service.util.XMLUtils;
import java.io.StringReader;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/**
 * @author Panas
 */
public class ParserManagerImpl implements ParserManager {

    SAXParserFactory f = SAXParserFactory.newInstance();
    SAXParser parser;

    public ParserManagerImpl() throws ParserConfigurationException, SAXException {
        this.parser = f.newSAXParser();
    }

    /**
     * @inheritDoc
     */
    public String parse(String xml) throws Exception {
        if (!XMLUtils.validateXMLByXSD(xml, "src\\main\\webapp\\schems\\APIRequest.xsd")) {
            return "error load schem requesrAPI.xsd";
        }
        Object tempObj = SpringUtil.getInstance().getBean("globalParser");
        if (!(tempObj instanceof GlobalParser)) {
            return "error not equals type!";
        }
        GlobalParser globalParser = (GlobalParser) tempObj;
        InputSource source = new InputSource(new StringReader(xml));
        parser.parse(source, (DefaultHandler) globalParser);
        return globalParser.getResponce();
    }
}
