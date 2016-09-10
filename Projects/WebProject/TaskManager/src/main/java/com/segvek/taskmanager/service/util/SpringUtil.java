package com.segvek.taskmanager.service.util;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

/**
 *
 * @author Panas
 */
public class SpringUtil {

    private static SpringUtil springUtil = new SpringUtil();

    public static SpringUtil getInstance() {
        return springUtil;
    }

    private BeanFactory beanFactory;

    private SpringUtil() {
        beanFactory = new XmlBeanFactory(new FileSystemResource("ApplicationContext.xml"));
    }

    public BeanFactory getBeanFactory() {
        return beanFactory;
    }

    public Object getBean(String idBean) {
        return beanFactory.getBean(idBean);
    }
}
