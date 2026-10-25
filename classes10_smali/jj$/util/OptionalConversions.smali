.class public Ljj$/util/OptionalConversions;
.super Ljava/lang/Object;
.source "OptionalConversions.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljj$/util/Optional;)Ljava/util/Optional;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/util/OptionalDouble;)Ljava/util/OptionalDouble;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljj$/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/util/OptionalInt;)Ljava/util/OptionalInt;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljj$/util/OptionalInt;->getAsInt()I

    move-result p0

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/util/OptionalLong;)Ljava/util/OptionalLong;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/util/OptionalLong;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljj$/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/util/Optional;)Ljj$/util/Optional;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljj$/util/Optional;->of(Ljava/lang/Object;)Ljj$/util/Optional;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {}, Ljj$/util/Optional;->empty()Ljj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/util/OptionalDouble;)Ljj$/util/OptionalDouble;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/OptionalDouble;->of(D)Ljj$/util/OptionalDouble;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {}, Ljj$/util/OptionalDouble;->empty()Ljj$/util/OptionalDouble;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/util/OptionalInt;)Ljj$/util/OptionalInt;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    invoke-static {p0}, Ljj$/util/OptionalInt;->of(I)Ljj$/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {}, Ljj$/util/OptionalInt;->empty()Ljj$/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/util/OptionalLong;)Ljj$/util/OptionalLong;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/util/OptionalLong;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/OptionalLong;->of(J)Ljj$/util/OptionalLong;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {}, Ljj$/util/OptionalLong;->empty()Ljj$/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method
