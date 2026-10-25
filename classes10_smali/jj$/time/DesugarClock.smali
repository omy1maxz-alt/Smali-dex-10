.class public abstract Ljj$/time/DesugarClock;
.super Ljava/lang/Object;
.source "DesugarClock.java"


# static fields
.field static final NANOS_PER_MILLI:J = 0xf4240L


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tickMillis(Ljj$/time/ZoneId;)Ljj$/time/Clock;
    .registers 5

    new-instance v0, Ljj$/time/DesugarClock$DesugarTickClock;

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/DesugarClock$DesugarTickClock;-><init>(Ljj$/time/Clock;J)V

    return-object v0
.end method
