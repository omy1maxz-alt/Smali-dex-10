.class public interface abstract Ljj$/time/chrono/Chronology;
.super Ljava/lang/Object;
.source "Chronology.java"

# interfaces
.implements Ljava/lang/Comparable;


# virtual methods
.method public abstract compareTo(Ljj$/time/chrono/Chronology;)I
.end method

.method public abstract date(III)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateEpochDay(J)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateNow()Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract epochSecond(IIIIIILjj$/time/ZoneOffset;)J
.end method

.method public abstract epochSecond(Ljj$/time/chrono/Era;IIIIIILjj$/time/ZoneOffset;)J
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract eraOf(I)Ljj$/time/chrono/Era;
.end method

.method public abstract eras()Ljava/util/List;
.end method

.method public abstract getCalendarType()Ljava/lang/String;
.end method

.method public abstract getDisplayName(Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isLeapYear(J)Z
.end method

.method public abstract localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;
.end method

.method public abstract period(III)Ljj$/time/chrono/ChronoPeriod;
.end method

.method public abstract prolepticYear(Ljj$/time/chrono/Era;I)I
.end method

.method public abstract range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;
.end method

.method public abstract resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
.end method

.method public abstract zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;
.end method
