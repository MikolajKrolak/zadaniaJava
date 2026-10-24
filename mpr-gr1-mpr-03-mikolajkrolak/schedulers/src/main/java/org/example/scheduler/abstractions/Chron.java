package org.example.scheduler.abstractions;

import java.time.Duration;
import java.time.LocalDateTime;

public class Chron {
    private LocalDateTime startTime = LocalDateTime.now();
    private LocalDateTime endTime = null;
    private int maxExecutionTimes = Integer.MAX_VALUE;
    private Duration intervalDuration = Duration.ofSeconds(1);



}
