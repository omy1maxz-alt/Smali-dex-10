.class public Lorg/mozilla/javascript/UintMap;
.super Ljava/lang/Object;
.source "UintMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final A:I = -0x61c88647

.field private static final DELETED:I = -0x2

.field private static final EMPTY:I = -0x1

.field private static final check:Z = false

.field private static final serialVersionUID:J = 0x3ae1178bbc3ee17cL


# instance fields
.field private transient ivaluesShift:I

.field private keyCount:I

.field private transient keys:[I

.field private transient occupiedCount:I

.field private power:I

.field private transient values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/UintMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    mul-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x3

    const/4 v0, 0x2

    :goto_d
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ge v1, p1, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_14
    iput v0, p0, Lorg/mozilla/javascript/UintMap;->power:I

    return-void
.end method

.method private ensureIndex(IZ)I
    .registers 12

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_35

    const v3, -0x61c88647

    mul-int v3, v3, p1

    iget v4, p0, Lorg/mozilla/javascript/UintMap;->power:I

    rsub-int/lit8 v5, v4, 0x20

    ushr-int v5, v3, v5

    aget v6, v0, v5

    if-ne v6, p1, :cond_16

    return v5

    :cond_16
    if-eq v6, v1, :cond_36

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1d

    move v6, v5

    goto :goto_1e

    :cond_1d
    const/4 v6, -0x1

    :goto_1e
    shl-int v8, v2, v4

    sub-int/2addr v8, v2

    invoke-static {v3, v8, v4}, Lorg/mozilla/javascript/UintMap;->tableLookupStep(III)I

    move-result v3

    :cond_25
    add-int/2addr v5, v3

    and-int/2addr v5, v8

    aget v4, v0, v5

    if-ne v4, p1, :cond_2c

    return v5

    :cond_2c
    if-ne v4, v7, :cond_31

    if-gez v6, :cond_31

    move v6, v5

    :cond_31
    if-ne v4, v1, :cond_25

    move v1, v6

    goto :goto_36

    :cond_35
    const/4 v5, -0x1

    :cond_36
    :goto_36
    if-ltz v1, :cond_39

    goto :goto_4c

    :cond_39
    if-eqz v0, :cond_54

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    mul-int/lit8 v3, v1, 0x4

    iget v4, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v4, v2, v4

    mul-int/lit8 v4, v4, 0x3

    if-lt v3, v4, :cond_48

    goto :goto_54

    :cond_48
    add-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    move v1, v5

    :goto_4c
    aput p1, v0, v1

    iget p1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    return v1

    :cond_54
    :goto_54
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/UintMap;->rehashTable(Z)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->insertNewKey(I)I

    move-result p1

    return p1
.end method

.method private findIndex(I)I
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_28

    const v2, -0x61c88647

    mul-int v2, v2, p1

    iget v3, p0, Lorg/mozilla/javascript/UintMap;->power:I

    rsub-int/lit8 v4, v3, 0x20

    ushr-int v4, v2, v4

    aget v5, v0, v4

    if-ne v5, p1, :cond_15

    return v4

    :cond_15
    if-eq v5, v1, :cond_28

    const/4 v5, 0x1

    shl-int v6, v5, v3

    sub-int/2addr v6, v5

    invoke-static {v2, v6, v3}, Lorg/mozilla/javascript/UintMap;->tableLookupStep(III)I

    move-result v2

    :cond_1f
    add-int/2addr v4, v2

    and-int/2addr v4, v6

    aget v3, v0, v4

    if-ne v3, p1, :cond_26

    return v4

    :cond_26
    if-ne v3, v1, :cond_1f

    :cond_28
    return v1
.end method

.method private insertNewKey(I)I
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const v1, -0x61c88647

    mul-int v1, v1, p1

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->power:I

    rsub-int/lit8 v3, v2, 0x20

    ushr-int v3, v1, v3

    aget v4, v0, v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v4, v5, :cond_20

    shl-int v4, v6, v2

    sub-int/2addr v4, v6

    invoke-static {v1, v4, v2}, Lorg/mozilla/javascript/UintMap;->tableLookupStep(III)I

    move-result v1

    :cond_1a
    add-int/2addr v3, v1

    and-int/2addr v3, v4

    aget v2, v0, v3

    if-ne v2, v5, :cond_1a

    :cond_20
    aput p1, v0, v3

    iget p1, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    iget p1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    if-eqz v0, :cond_5b

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    iget v4, p0, Lorg/mozilla/javascript/UintMap;->power:I

    const/4 v5, 0x1

    shl-int v4, v5, v4

    if-eqz v2, :cond_22

    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iput v4, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    goto :goto_26

    :cond_22
    new-array v5, v4, [I

    iput-object v5, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    :goto_26
    const/4 v5, 0x0

    :goto_27
    if-eq v5, v4, :cond_31

    iget-object v6, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v7, -0x1

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_31
    if-eqz v3, :cond_37

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    :cond_37
    :goto_37
    if-eq v1, v0, :cond_5b

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/UintMap;->insertNewKey(I)I

    move-result v4

    if-eqz v2, :cond_4e

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    iget-object v6, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v7, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v7, v4

    aput v5, v6, v7

    :cond_4e
    if-eqz v3, :cond_58

    iget-object v5, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_5b
    return-void
.end method

.method private rehashTable(Z)V
    .registers 10

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    if-lt v2, v3, :cond_12

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->power:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/UintMap;->power:I

    :cond_12
    iget v2, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int/2addr v1, v2

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-nez v2, :cond_20

    if-nez p1, :cond_20

    new-array p1, v1, [I

    iput-object p1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    goto :goto_28

    :cond_20
    iput v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    mul-int/lit8 p1, v1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    :goto_28
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_2a
    const/4 v4, -0x1

    if-eq v3, v1, :cond_34

    iget-object v5, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_34
    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v3, :cond_3c

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    :cond_3c
    iget v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    iput p1, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    if-eqz v1, :cond_6b

    iput p1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    :goto_44
    if-eqz v1, :cond_6b

    aget v5, v0, p1

    if-eq v5, v4, :cond_68

    const/4 v6, -0x2

    if-eq v5, v6, :cond_68

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/UintMap;->insertNewKey(I)I

    move-result v5

    if-eqz v3, :cond_59

    iget-object v6, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aget-object v7, v3, p1

    aput-object v7, v6, v5

    :cond_59
    if-eqz v2, :cond_66

    iget-object v6, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v7, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v7, v5

    add-int v5, v2, p1

    aget v5, v0, v5

    aput v5, v6, v7

    :cond_66
    add-int/lit8 v1, v1, -0x1

    :cond_68
    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    :cond_6b
    return-void
.end method

.method private static tableLookupStep(III)I
    .registers 3

    mul-int/lit8 p2, p2, 0x2

    rsub-int/lit8 p2, p2, 0x20

    if-ltz p2, :cond_b

    ushr-int/2addr p0, p2

    :goto_7
    and-int/2addr p0, p1

    or-int/lit8 p0, p0, 0x1

    return p0

    :cond_b
    neg-int p2, p2

    ushr-int/2addr p1, p2

    goto :goto_7
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 8

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    if-eqz v0, :cond_45

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v4, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    :goto_1c
    if-eqz v0, :cond_45

    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_42

    const/4 v5, -0x2

    if-eq v4, v5, :cond_42

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    if-eqz v1, :cond_39

    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v5, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v5, v3

    aget v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :cond_39
    if-eqz v2, :cond_42

    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_45
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 6

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->power:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    :goto_b
    if-eq v1, v0, :cond_15

    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    :goto_1a
    if-eq v1, v0, :cond_24

    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_24
    iput v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    iput v2, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    iput v2, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    return-void
.end method

.method public getExistingInt(I)I
    .registers 4

    if-gez p1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_17

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v1, :cond_16

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1

    :cond_16
    return v0

    :cond_17
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    return v0
.end method

.method public getInt(II)I
    .registers 4

    if-gez p1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result p1

    if-ltz p1, :cond_17

    iget p2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz p2, :cond_15

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    add-int/2addr p2, p1

    aget p1, v0, p2

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    return p2
.end method

.method public getKeys()[I
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_7
    if-eqz v1, :cond_18

    aget v4, v0, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    const/4 v5, -0x2

    if-eq v4, v5, :cond_15

    add-int/lit8 v1, v1, -0x1

    aput v4, v2, v1

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_18
    return-object v2
.end method

.method public getObject(I)Ljava/lang/Object;
    .registers 3

    if-gez p1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result p1

    if-ltz p1, :cond_14

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public has(I)Z
    .registers 2

    if-gez p1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result p1

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public put(II)V
    .registers 7

    if-gez p1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/UintMap;->ensureIndex(IZ)I

    move-result p1

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-nez v1, :cond_22

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    array-length v2, v1

    mul-int/lit8 v3, v0, 0x2

    if-eq v2, v3, :cond_20

    new-array v2, v3, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    :cond_20
    iput v0, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    :cond_22
    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .registers 5

    if-gez p1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/UintMap;->ensureIndex(IZ)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    :cond_16
    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public remove(I)V
    .registers 5

    if-gez p1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result p1

    if-ltz p1, :cond_25

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v1, -0x2

    aput v1, v0, p1

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v1, :cond_1d

    const/4 v2, 0x0

    aput-object v2, v1, p1

    :cond_1d
    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v1, :cond_25

    add-int/2addr v1, p1

    const/4 p1, 0x0

    aput p1, v0, v1

    :cond_25
    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    return v0
.end method
