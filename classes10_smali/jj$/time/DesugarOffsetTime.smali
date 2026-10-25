.class public final Ljj$/time/DesugarOffsetTime;
.super Ljava/lang/Object;
.source "DesugarOffsetTime.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toEpochSecond(Ljj$/time/OffsetTime;Ljj$/time/LocalDate;)J
    .registers 10

    const-string v0, "date"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/OffsetTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    const-wide/32 v3, 0x15180

    mul-long v3, v3, v0

    invoke-virtual {v2}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {p0}, Ljj$/time/OffsetTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v5}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v3, v6

    return-wide v3
.end method
