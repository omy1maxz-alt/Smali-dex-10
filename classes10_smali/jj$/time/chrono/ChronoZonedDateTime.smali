.class public interface abstract Ljj$/time/chrono/ChronoZonedDateTime;
.super Ljava/lang/Object;
.source "ChronoZonedDateTime.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljava/lang/Comparable;


# virtual methods
.method public abstract compareTo(Ljj$/time/chrono/ChronoZonedDateTime;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract format(Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;
.end method

.method public abstract get(Ljj$/time/temporal/TemporalField;)I
.end method

.method public abstract getChronology()Ljj$/time/chrono/Chronology;
.end method

.method public abstract getLong(Ljj$/time/temporal/TemporalField;)J
.end method

.method public abstract getOffset()Ljj$/time/ZoneOffset;
.end method

.method public abstract getZone()Ljj$/time/ZoneId;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAfter(Ljj$/time/chrono/ChronoZonedDateTime;)Z
.end method

.method public abstract isBefore(Ljj$/time/chrono/ChronoZonedDateTime;)Z
.end method

.method public abstract isEqual(Ljj$/time/chrono/ChronoZonedDateTime;)Z
.end method

.method public abstract isSupported(Ljj$/time/temporal/TemporalField;)Z
.end method

.method public abstract isSupported(Ljj$/time/temporal/TemporalUnit;)Z
.end method

.method public abstract minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
.end method

.method public abstract range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
.end method

.method public abstract toEpochSecond()J
.end method

.method public abstract toInstant()Ljj$/time/Instant;
.end method

.method public abstract toLocalDate()Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;
.end method

.method public abstract toLocalTime()Ljj$/time/LocalTime;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract withEarlierOffsetAtOverlap()Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract withLaterOffsetAtOverlap()Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract withZoneSameInstant(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract withZoneSameLocal(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
.end method
