.class public interface abstract Ljj$/time/temporal/TemporalField;
.super Ljava/lang/Object;
.source "TemporalField.java"


# virtual methods
.method public abstract adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
.end method

.method public abstract getBaseUnit()Ljj$/time/temporal/TemporalUnit;
.end method

.method public abstract getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getFrom(Ljj$/time/temporal/TemporalAccessor;)J
.end method

.method public abstract getRangeUnit()Ljj$/time/temporal/TemporalUnit;
.end method

.method public abstract isDateBased()Z
.end method

.method public abstract isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z
.end method

.method public abstract isTimeBased()Z
.end method

.method public abstract range()Ljj$/time/temporal/ValueRange;
.end method

.method public abstract rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
.end method

.method public abstract resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
