package com.segvek.taskmanager.service.functions.functionAuthorization;

import com.segvek.taskmanager.service.model.User;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/**
 *
 * @author Panas
 */
public class ParserAuthorization extends DefaultHandler {

    private String login, hashPass;

    private String tempElement;

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        super.startElement(uri, localName, qName, attributes); //To change body of generated methods, choose Tools | Templates.
        tempElement = qName;
    }

    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        super.characters(ch, start, length); //To change body of generated methods, choose Tools | Templates.

        switch (tempElement) {
            case "name": {
                if (login == null) {
                    login = new String(ch, start, length);
                }
                break;
            }
            case "hashPass": {
                if (hashPass == null) {
                    hashPass = new String(ch, start, length);
                }
                break;
            }
        }
    }

    public User getUser() {
        return new User(null, null, login, hashPass, 0L);
    }
}
