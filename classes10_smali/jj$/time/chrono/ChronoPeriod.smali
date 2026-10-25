.class public interface abstract Ljj$/time/chrono/ChronoPeriod;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"

# interfaces
.implements Ljj$/time/temporal/TemporalAmount;


# virtual methods
.method public abstract addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(Ljj$/time/temporal/TemporalUnit;)J
.end method

.method public abstract getChronology()Ljj$/time/chrono/Chronology;
.end method

.method public abstract getUnits()Ljava/util/List;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isNegative()Z
.end method

.method public abstract isZero()Z
.end method

.method public abstract minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoPeriod;
.end method

.method public abstract multipliedBy(I)Ljj$/time/chrono/ChronoPeriod;
.end method

.method public abstract negated()Ljj$/time/chrono/ChronoPeriod;
.end method

.method public abstract normalized()Ljj$/time/chrono/ChronoPeriod;
.end method

.method public abstract plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoPeriod;
.end method

.method public abstract subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
