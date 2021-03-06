package com.futao.springbootdemo.foundation.mq.rocket;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Condition;
import org.springframework.context.annotation.ConditionContext;
import org.springframework.core.annotation.Order;
import org.springframework.core.type.AnnotatedTypeMetadata;
import org.springframework.stereotype.Component;

/**
 * rocket mq 消费者开关
 *
 * @author futao
 * Created ON 2018-12-27.
 */
@Order(100)
@Component
@ConfigurationProperties(prefix = "rocketmq.consumer")
public class RocketMqConsumerOnOff implements Condition {

    private static final String ON = "ON";
    private static final String OFF = "OFF";

    private String onOff;

    @Override
    public boolean matches(ConditionContext context, AnnotatedTypeMetadata metadata) {
//        return ON.equals(onOff); //这种方式取不到值
        return Boolean.valueOf(context.getEnvironment().getProperty("rocketmq.consumer.onOff"));
    }

    public String getOnOff() {
        return onOff;
    }

    public void setOnOff(String onOff) {
        this.onOff = onOff;
    }
}
