.class public final synthetic Ljj$/util/DesugarDate;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljj$/time/Instant;)Ljava/util/Date;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_9
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toInstant(Ljava/util/Date;)Ljj$/time/Instant;
    .registers 3

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/time/Instant;->ofEpochMilli(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method
