.class Lorg/mozilla/javascript/ResolvedOverload;
.super Ljava/lang/Object;
.source "NativeJavaMethod.java"


# instance fields
.field final index:I

.field final types:[Ljava/lang/Class;


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/mozilla/javascript/ResolvedOverload;->index:I

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/Class;

    iput-object p2, p0, Lorg/mozilla/javascript/ResolvedOverload;->types:[Ljava/lang/Class;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p2, :cond_29

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_1a

    check-cast v1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v1

    :cond_1a
    iget-object v2, p0, Lorg/mozilla/javascript/ResolvedOverload;->types:[Ljava/lang/Class;

    if-nez v1, :cond_20

    const/4 v1, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_24
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/mozilla/javascript/ResolvedOverload;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/ResolvedOverload;

    iget-object v0, p0, Lorg/mozilla/javascript/ResolvedOverload;->types:[Ljava/lang/Class;

    iget-object v2, p1, Lorg/mozilla/javascript/ResolvedOverload;->types:[Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lorg/mozilla/javascript/ResolvedOverload;->index:I

    iget p1, p1, Lorg/mozilla/javascript/ResolvedOverload;->index:I

    if-ne v0, p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ResolvedOverload;->types:[Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method matches([Ljava/lang/Object;)Z
    .registers 7

    array-length v0, p1

    iget-object v1, p0, Lorg/mozilla/javascript/ResolvedOverload;->types:[Ljava/lang/Class;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_2f

    aget-object v3, p1, v1

    instance-of v4, v3, Lorg/mozilla/javascript/Wrapper;

    if-eqz v4, :cond_18

    check-cast v3, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v3}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v3

    :cond_18
    if-nez v3, :cond_21

    iget-object v3, p0, Lorg/mozilla/javascript/ResolvedOverload;->types:[Ljava/lang/Class;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2c

    return v2

    :cond_21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/javascript/ResolvedOverload;->types:[Ljava/lang/Class;

    aget-object v4, v4, v1

    if-eq v3, v4, :cond_2c

    return v2

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2f
    const/4 p1, 0x1

    return p1
.end method
