.class public final synthetic Ljj$/time/temporal/TemporalField$-CC;
.super Ljava/lang/Object;
.source "TemporalField.java"


# direct methods
.method public static $default$getDisplayName(Ljj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    const-string v0, "locale"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Ljj$/time/temporal/TemporalField;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $default$resolve(Ljj$/time/temporal/TemporalField;Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method
