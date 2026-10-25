.class public final synthetic Ljj$/util/GregorianCalendarRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic toZonedDateTime(Ljava/util/GregorianCalendar;)Ljj$/time/ZonedDateTime;
    .registers 2

    instance-of v0, p0, Ljj$/util/GregorianCalendarRetargetInterface;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/GregorianCalendarRetargetInterface;

    invoke-interface {p0}, Ljj$/util/GregorianCalendarRetargetInterface;->toZonedDateTime()Ljj$/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/util/DesugarGregorianCalendar;->toZonedDateTime(Ljava/util/GregorianCalendar;)Ljj$/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method
