.class public final synthetic Ljj$/util/TimeZoneRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic toZoneId(Ljava/util/TimeZone;)Ljj$/time/ZoneId;
    .registers 2

    instance-of v0, p0, Ljj$/util/TimeZoneRetargetInterface;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/TimeZoneRetargetInterface;

    invoke-interface {p0}, Ljj$/util/TimeZoneRetargetInterface;->toZoneId()Ljj$/time/ZoneId;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/util/DesugarTimeZone;->toZoneId(Ljava/util/TimeZone;)Ljj$/time/ZoneId;

    move-result-object p0

    return-object p0
.end method
