.class public final Ljj$/time/DesugarLocalTime;
.super Ljava/lang/Object;
.source "DesugarLocalTime.java"


# static fields
.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field static final SECONDS_PER_DAY:I = 0x15180


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/LocalTime;
    .registers 10

    const-string v0, "instant"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const v3, 0x15180

    invoke-static {v1, v2, v3}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v3

    int-to-long v4, v3

    const-wide/32 v6, 0x3b9aca00

    mul-long v4, v4, v6

    invoke-virtual {p0}, Ljj$/time/Instant;->getNano()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public static toEpochSecond(Ljj$/time/LocalTime;Ljj$/time/LocalDate;Ljj$/time/ZoneOffset;)J
    .registers 9

    const-string v0, "date"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v2, v2, v0

    invoke-virtual {p0}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {p2}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method
