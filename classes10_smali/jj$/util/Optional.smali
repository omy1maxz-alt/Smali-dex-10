.class public final Ljj$/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# static fields
.field private static final EMPTY:Ljj$/util/Optional;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/util/Optional;

    invoke-direct {v0}, Ljj$/util/Optional;-><init>()V

    sput-object v0, Ljj$/util/Optional;->EMPTY:Ljj$/util/Optional;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method public static empty()Ljj$/util/Optional;
    .registers 1

    sget-object v0, Ljj$/util/Optional;->EMPTY:Ljj$/util/Optional;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ljj$/util/Optional;
    .registers 2

    new-instance v0, Ljj$/util/Optional;

    invoke-direct {v0, p0}, Ljj$/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljj$/util/Optional;
    .registers 2

    if-nez p0, :cond_7

    invoke-static {}, Ljj$/util/Optional;->empty()Ljj$/util/Optional;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Ljj$/util/Optional;->of(Ljava/lang/Object;)Ljj$/util/Optional;

    move-result-object v0

    :goto_b
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Ljj$/util/Optional;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    move-object v0, p1

    check-cast v0, Ljj$/util/Optional;

    iget-object v1, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    iget-object v2, v0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public filter(Ljava/util/function/Predicate;)Ljj$/util/Optional;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_a

    return-object p0

    :cond_a
    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, p0

    goto :goto_18

    :cond_14
    invoke-static {}, Ljj$/util/Optional;->empty()Ljj$/util/Optional;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method public flatMap(Ljava/util/function/Function;)Ljj$/util/Optional;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Ljj$/util/Optional;->empty()Ljj$/util/Optional;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/Optional;

    invoke-static {v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/Optional;

    return-object v1
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifPresent(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_d

    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPresent()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public map(Ljava/util/function/Function;)Ljj$/util/Optional;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Ljj$/util/Optional;->empty()Ljj$/util/Optional;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Optional;->ofNullable(Ljava/lang/Object;)Ljj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/util/function/Supplier;)Ljj$/util/Optional;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_a

    return-object p0

    :cond_a
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/Optional;

    invoke-static {v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/Optional;

    return-object v1
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    return-object v0
.end method

.method public orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public orElseThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Ljj$/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Ljj$/util/stream/Stream$-CC;->empty()Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljj$/util/Optional;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Optional[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "Optional.empty"

    :goto_15
    return-object v0
.end method
