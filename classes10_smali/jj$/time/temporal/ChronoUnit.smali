.class public final enum Ljj$/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Ljj$/time/temporal/TemporalUnit;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/temporal/ChronoUnit;

.field public static final enum CENTURIES:Ljj$/time/temporal/ChronoUnit;

.field public static final enum DAYS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum DECADES:Ljj$/time/temporal/ChronoUnit;

.field public static final enum ERAS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum FOREVER:Ljj$/time/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum HOURS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum MICROS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Ljj$/time/temporal/ChronoUnit;

.field public static final enum MILLIS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum MINUTES:Ljj$/time/temporal/ChronoUnit;

.field public static final enum MONTHS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum NANOS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum SECONDS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum WEEKS:Ljj$/time/temporal/ChronoUnit;

.field public static final enum YEARS:Ljj$/time/temporal/ChronoUnit;


# instance fields
.field private final duration:Ljj$/time/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofNanos(J)Ljj$/time/Duration;

    move-result-object v3

    const-string v4, "NANOS"

    const/4 v5, 0x0

    const-string v6, "Nanos"

    invoke-direct {v0, v4, v5, v6, v3}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljj$/time/Duration;->ofNanos(J)Ljj$/time/Duration;

    move-result-object v3

    const-string v4, "MICROS"

    const/4 v6, 0x1

    const-string v7, "Micros"

    invoke-direct {v0, v4, v6, v7, v3}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->MICROS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v3, 0xf4240

    invoke-static {v3, v4}, Ljj$/time/Duration;->ofNanos(J)Ljj$/time/Duration;

    move-result-object v3

    const-string v4, "MILLIS"

    const/4 v7, 0x2

    const-string v8, "Millis"

    invoke-direct {v0, v4, v7, v8, v3}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->MILLIS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-string v3, "Seconds"

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "SECONDS"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v4, v3, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "MINUTES"

    const/4 v3, 0x4

    const-string v8, "Minutes"

    invoke-direct {v0, v2, v3, v8, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->MINUTES:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0xe10

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "HOURS"

    const/4 v8, 0x5

    const-string v9, "Hours"

    invoke-direct {v0, v2, v8, v9, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0xa8c0

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "HALF_DAYS"

    const/4 v9, 0x6

    const-string v10, "HalfDays"

    invoke-direct {v0, v2, v9, v10, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->HALF_DAYS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x15180

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "DAYS"

    const/4 v10, 0x7

    const-string v11, "Days"

    invoke-direct {v0, v2, v10, v11, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x93a80

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "WEEKS"

    const/16 v11, 0x8

    const-string v12, "Weeks"

    invoke-direct {v0, v2, v11, v12, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x282072

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "MONTHS"

    const/16 v12, 0x9

    const-string v13, "Months"

    invoke-direct {v0, v2, v12, v13, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x1e18558

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "YEARS"

    const/16 v13, 0xa

    const-string v14, "Years"

    invoke-direct {v0, v2, v13, v14, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x12cf3570

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "DECADES"

    const/16 v14, 0xb

    const-string v15, "Decades"

    invoke-direct {v0, v2, v14, v15, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->DECADES:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide v1, 0xbc181660L

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "CENTURIES"

    const/16 v15, 0xc

    const/16 v16, 0x4

    const-string v3, "Centuries"

    invoke-direct {v0, v2, v15, v3, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->CENTURIES:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide v1, 0x758f0dfc0L

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "MILLENNIA"

    const/16 v3, 0xd

    const/16 v17, 0x3

    const-string v4, "Millennia"

    invoke-direct {v0, v2, v3, v4, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->MILLENNIA:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide v1, 0x701ce172277000L

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "ERAS"

    const/16 v4, 0xe

    const/16 v18, 0xd

    const-string v3, "Eras"

    invoke-direct {v0, v2, v4, v3, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->ERAS:Ljj$/time/temporal/ChronoUnit;

    new-instance v0, Ljj$/time/temporal/ChronoUnit;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/16 v19, 0xe

    const-wide/32 v4, 0x3b9ac9ff

    invoke-static {v1, v2, v4, v5}, Ljj$/time/Duration;->ofSeconds(JJ)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "FOREVER"

    const/16 v4, 0xf

    const-string v5, "Forever"

    invoke-direct {v0, v2, v4, v5, v1}, Ljj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const/16 v0, 0x10

    new-array v0, v0, [Ljj$/time/temporal/ChronoUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MICROS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v6

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MILLIS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v7

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v17

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MINUTES:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v16

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v8

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->HALF_DAYS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v9

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v10

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v11

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v12

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v13

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->DECADES:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v14

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->CENTURIES:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v15

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MILLENNIA:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v18

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->ERAS:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v19

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v4

    sput-object v0, Ljj$/time/temporal/ChronoUnit;->$VALUES:[Ljj$/time/temporal/ChronoUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljj$/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    iput-object p4, p0, Ljj$/time/temporal/ChronoUnit;->duration:Ljj$/time/Duration;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/temporal/ChronoUnit;
    .registers 2

    const-class v0, Ljj$/time/temporal/ChronoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static values()[Ljj$/time/temporal/ChronoUnit;
    .registers 1

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->$VALUES:[Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v0}, [Ljj$/time/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
    .registers 5

    invoke-interface {p1, p2, p3, p0}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J
    .registers 5

    invoke-interface {p1, p2, p0}, Ljj$/time/temporal/Temporal;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()Ljj$/time/Duration;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/ChronoUnit;->duration:Ljj$/time/Duration;

    return-object v0
.end method

.method public isDateBased()Z
    .registers 2

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Ljj$/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_e

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    if-eq p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isDurationEstimated()Z
    .registers 2

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Ljj$/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSupportedBy(Ljj$/time/temporal/Temporal;)Z
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/Temporal;->isSupported(Ljj$/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .registers 2

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Ljj$/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    return-object v0
.end method
