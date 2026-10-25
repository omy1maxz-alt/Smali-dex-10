.class public final Ljj$/util/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final EMPTY:Ljj$/util/OptionalDouble;


# instance fields
.field private final isPresent:Z

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/util/OptionalDouble;

    invoke-direct {v0}, Ljj$/util/OptionalDouble;-><init>()V

    sput-object v0, Ljj$/util/OptionalDouble;->EMPTY:Ljj$/util/OptionalDouble;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    iput-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    return-void
.end method

.method private constructor <init>(D)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    iput-wide p1, p0, Ljj$/util/OptionalDouble;->value:D

    return-void
.end method

.method public static empty()Ljj$/util/OptionalDouble;
    .registers 1

    sget-object v0, Ljj$/util/OptionalDouble;->EMPTY:Ljj$/util/OptionalDouble;

    return-object v0
.end method

.method public static of(D)Ljj$/util/OptionalDouble;
    .registers 3

    new-instance v0, Ljj$/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Ljj$/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/util/OptionalDouble;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Ljj$/util/OptionalDouble;

    iget-boolean v3, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_22

    iget-boolean v3, v1, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_22

    iget-wide v3, p0, Ljj$/util/OptionalDouble;->value:D

    iget-wide v5, v1, Ljj$/util/OptionalDouble;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_20

    goto :goto_2a

    :cond_20
    const/4 v0, 0x0

    goto :goto_2a

    :cond_22
    iget-boolean v3, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    iget-boolean v4, v1, Ljj$/util/OptionalDouble;->isPresent:Z

    if-ne v3, v4, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public getAsDouble()D
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    return-wide v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljj$/util/OptionalDouble$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public ifPresent(Ljava/util/function/DoubleConsumer;)V
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_9

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    :cond_9
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/DoubleConsumer;Ljava/lang/Runnable;)V
    .registers 5

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    goto :goto_d

    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    return v0
.end method

.method public orElse(D)D
    .registers 5

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    goto :goto_8

    :cond_7
    move-wide v0, p1

    :goto_8
    return-wide v0
.end method

.method public orElseGet(Ljava/util/function/DoubleSupplier;)D
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public orElseThrow()D
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    return-wide v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)D
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    return-wide v0

    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Ljj$/util/stream/DoubleStream;
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljj$/util/stream/DoubleStream$-CC;->of(D)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {}, Ljj$/util/stream/DoubleStream$-CC;->empty()Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_17

    iget-wide v0, p0, Ljj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OptionalDouble[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-string v0, "OptionalDouble.empty"

    :goto_19
    return-object v0
.end method
