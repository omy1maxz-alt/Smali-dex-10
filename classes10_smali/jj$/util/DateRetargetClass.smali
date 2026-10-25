.class public final synthetic Ljj$/util/DateRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic toInstant(Ljava/util/Date;)Ljj$/time/Instant;
    .registers 2

    instance-of v0, p0, Ljj$/util/DateRetargetInterface;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/util/DateRetargetInterface;

    invoke-interface {p0}, Ljj$/util/DateRetargetInterface;->toInstant()Ljj$/time/Instant;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/util/DesugarDate;->toInstant(Ljava/util/Date;)Ljj$/time/Instant;

    move-result-object p0

    return-object p0
.end method
