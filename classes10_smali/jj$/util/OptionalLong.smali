.class public final Ljj$/util/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# static fields
.field private static final EMPTY:Ljj$/util/OptionalLong;


# instance fields
.field private final isPresent:Z

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/util/OptionalLong;

    invoke-direct {v0}, Ljj$/util/OptionalLong;-><init>()V

    sput-object v0, Ljj$/util/OptionalLong;->EMPTY:Ljj$/util/OptionalLong;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    iput-wide p1, p0, Ljj$/util/OptionalLong;->value:J

    return-void
.end method

.method public static empty()Ljj$/util/OptionalLong;
    .registers 1

    sget-object v0, Ljj$/util/OptionalLong;->EMPTY:Ljj$/util/OptionalLong;

    return-object v0
.end method

.method public static of(J)Ljj$/util/OptionalLong;
    .registers 3

    new-instance v0, Ljj$/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Ljj$/util/OptionalLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/util/OptionalLong;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Ljj$/util/OptionalLong;

    iget-boolean v3, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_20

    iget-boolean v3, v1, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_20

    iget-wide v3, p0, Ljj$/util/OptionalLong;->value:J

    iget-wide v5, v1, Ljj$/util/OptionalLong;->value:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1e

    goto :goto_28

    :cond_1e
    const/4 v0, 0x0

    goto :goto_28

    :cond_20
    iget-boolean v3, p0, Ljj$/util/OptionalLong;->isPresent:Z

    iget-boolean v4, v1, Ljj$/util/OptionalLong;->isPresent:Z

    if-ne v3, v4, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method public getAsLong()J
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    return-wide v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljj$/util/OptionalLong$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public ifPresent(Ljava/util/function/LongConsumer;)V
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_9

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    :cond_9
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/LongConsumer;Ljava/lang/Runnable;)V
    .registers 5

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    goto :goto_d

    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    return v0
.end method

.method public orElse(J)J
    .registers 5

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    goto :goto_8

    :cond_7
    move-wide v0, p1

    :goto_8
    return-wide v0
.end method

.method public orElseGet(Ljava/util/function/LongSupplier;)J
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public orElseThrow()J
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    return-wide v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)J
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    return-wide v0

    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Ljj$/util/stream/LongStream;
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljj$/util/stream/LongStream$-CC;->of(J)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {}, Ljj$/util/stream/LongStream$-CC;->empty()Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_17

    iget-wide v0, p0, Ljj$/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OptionalLong[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-string v0, "OptionalLong.empty"

    :goto_19
    return-object v0
.end method
