.class public interface abstract Ljj$/time/chrono/Era;
.super Ljava/lang/Object;
.source "Era.java"

# interfaces
.implements Ljj$/time/temporal/TemporalAccessor;
.implements Ljj$/time/temporal/TemporalAdjuster;


# virtual methods
.method public abstract adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
.end method

.method public abstract get(Ljj$/time/temporal/TemporalField;)I
.end method

.method public abstract getDisplayName(Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getLong(Ljj$/time/temporal/TemporalField;)J
.end method

.method public abstract getValue()I
.end method

.method public abstract isSupported(Ljj$/time/temporal/TemporalField;)Z
.end method

.method public abstract query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
.end method

.method public abstract range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
.end method
