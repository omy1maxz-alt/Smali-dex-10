.class public final Ljj$/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field private static final EMPTY:Ljj$/util/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/util/OptionalInt;

    invoke-direct {v0}, Ljj$/util/OptionalInt;-><init>()V

    sput-object v0, Ljj$/util/OptionalInt;->EMPTY:Ljj$/util/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    iput v0, p0, Ljj$/util/OptionalInt;->value:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    iput p1, p0, Ljj$/util/OptionalInt;->value:I

    return-void
.end method

.method public static empty()Ljj$/util/OptionalInt;
    .registers 1

    sget-object v0, Ljj$/util/OptionalInt;->EMPTY:Ljj$/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Ljj$/util/OptionalInt;
    .registers 2

    new-instance v0, Ljj$/util/OptionalInt;

    invoke-direct {v0, p0}, Ljj$/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/util/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Ljj$/util/OptionalInt;

    iget-boolean v3, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v1, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_1e

    iget v3, p0, Ljj$/util/OptionalInt;->value:I

    iget v4, v1, Ljj$/util/OptionalInt;->value:I

    if-ne v3, v4, :cond_1c

    goto :goto_26

    :cond_1c
    const/4 v0, 0x0

    goto :goto_26

    :cond_1e
    iget-boolean v3, p0, Ljj$/util/OptionalInt;->isPresent:Z

    iget-boolean v4, v1, Ljj$/util/OptionalInt;->isPresent:Z

    if-ne v3, v4, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method public getAsInt()I
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    return v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public ifPresent(Ljava/util/function/IntConsumer;)V
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_9

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_9
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/IntConsumer;Ljava/lang/Runnable;)V
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_a

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_d

    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    return v0
.end method

.method public orElseGet(Ljava/util/function/IntSupplier;)I
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    :goto_b
    return v0
.end method

.method public orElseThrow()I
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    return v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)I
    .registers 3

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    return v0

    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Ljj$/util/stream/IntStream;
    .registers 2

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_b

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    invoke-static {v0}, Ljj$/util/stream/IntStream$-CC;->of(I)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {}, Ljj$/util/stream/IntStream$-CC;->empty()Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Ljj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_17

    iget v0, p0, Ljj$/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OptionalInt[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-string v0, "OptionalInt.empty"

    :goto_19
    return-object v0
.end method
