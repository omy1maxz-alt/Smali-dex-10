.class public Lorg/mozilla/javascript/ObjToIntMap;
.super Ljava/lang/Object;
.source "ObjToIntMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final A:I = -0x61c88647

.field private static final DELETED:Ljava/lang/Object;

.field private static final check:Z = false

.field private static final serialVersionUID:J = -0x1567117278d454baL


# instance fields
.field private keyCount:I

.field private transient keys:[Ljava/lang/Object;

.field private transient occupiedCount:I

.field private power:I

.field private transient values:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

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
    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    return-object v0
.end method

.method private ensureIndex(Ljava/lang/Object;)I
    .registers 12

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_5c

    const v4, -0x61c88647

    mul-int v4, v4, v0

    iget v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    rsub-int/lit8 v6, v5, 0x20

    ushr-int v6, v4, v6

    aget-object v1, v1, v6

    if-eqz v1, :cond_5d

    shl-int v5, v3, v5

    if-eq v1, p1, :cond_5b

    iget-object v7, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v8, v5, v6

    aget v7, v7, v8

    if-ne v7, v0, :cond_2c

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    goto :goto_5b

    :cond_2c
    sget-object v7, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-ne v1, v7, :cond_31

    move v2, v6

    :cond_31
    add-int/lit8 v1, v5, -0x1

    iget v7, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    invoke-static {v4, v1, v7}, Lorg/mozilla/javascript/ObjToIntMap;->tableLookupStep(III)I

    move-result v4

    :cond_39
    :goto_39
    add-int/2addr v6, v4

    and-int/2addr v6, v1

    iget-object v7, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v7, v7, v6

    if-nez v7, :cond_42

    goto :goto_5d

    :cond_42
    if-eq v7, p1, :cond_5b

    iget-object v8, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v9, v5, v6

    aget v8, v8, v9

    if-ne v8, v0, :cond_53

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    goto :goto_5b

    :cond_53
    sget-object v8, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-ne v7, v8, :cond_39

    if-gez v2, :cond_39

    move v2, v6

    goto :goto_39

    :cond_5b
    :goto_5b
    return v6

    :cond_5c
    const/4 v6, -0x1

    :cond_5d
    :goto_5d
    if-ltz v2, :cond_60

    goto :goto_75

    :cond_60
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-eqz v1, :cond_88

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    mul-int/lit8 v2, v1, 0x4

    iget v4, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v4, v3, v4

    mul-int/lit8 v4, v4, 0x3

    if-lt v2, v4, :cond_71

    goto :goto_88

    :cond_71
    add-int/2addr v1, v3

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    move v2, v6

    :goto_75
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v1, v3, v1

    add-int/2addr v1, v2

    aput v0, p1, v1

    iget p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    return v2

    :cond_88
    :goto_88
    invoke-direct {p0}, Lorg/mozilla/javascript/ObjToIntMap;->rehashTable()V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->insertNewKey(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method private findIndex(Ljava/lang/Object;)I
    .registers 10

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x61c88647

    mul-int v1, v1, v0

    iget v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    rsub-int/lit8 v3, v2, 0x20

    ushr-int v3, v1, v3

    iget-object v4, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_4f

    const/4 v5, 0x1

    shl-int v2, v5, v2

    if-eq v4, p1, :cond_4e

    iget-object v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v6, v2, v3

    aget v5, v5, v6

    if-ne v5, v0, :cond_2d

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_4e

    :cond_2d
    add-int/lit8 v4, v2, -0x1

    iget v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    invoke-static {v1, v4, v5}, Lorg/mozilla/javascript/ObjToIntMap;->tableLookupStep(III)I

    move-result v1

    :cond_35
    add-int/2addr v3, v1

    and-int/2addr v3, v4

    iget-object v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v3

    if-nez v5, :cond_3e

    goto :goto_4f

    :cond_3e
    if-eq v5, p1, :cond_4e

    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v7, v2, v3

    aget v6, v6, v7

    if-ne v6, v0, :cond_35

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    :cond_4e
    :goto_4e
    return v3

    :cond_4f
    :goto_4f
    const/4 p1, -0x1

    return p1
.end method

.method private insertNewKey(Ljava/lang/Object;I)I
    .registers 9

    const v0, -0x61c88647

    mul-int v0, v0, p2

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    rsub-int/lit8 v2, v1, 0x20

    ushr-int v2, v0, v2

    const/4 v3, 0x1

    shl-int v4, v3, v1

    iget-object v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v2

    if-eqz v5, :cond_22

    add-int/lit8 v5, v4, -0x1

    invoke-static {v0, v5, v1}, Lorg/mozilla/javascript/ObjToIntMap;->tableLookupStep(III)I

    move-result v0

    :cond_1a
    add-int/2addr v2, v0

    and-int/2addr v2, v5

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v2

    if-nez v1, :cond_1a

    :cond_22
    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int/2addr v4, v2

    aput p2, p1, v4

    iget p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    iget p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    iget v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    :goto_19
    if-eq v1, v0, :cond_32

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/ObjToIntMap;->insertNewKey(Ljava/lang/Object;I)I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_32
    return-void
.end method

.method private rehashTable()V
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v0, v1, v0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    goto :goto_53

    :cond_14
    iget v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    if-lt v3, v4, :cond_21

    iget v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    :cond_21
    iget v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int/2addr v1, v3

    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    array-length v4, v0

    new-array v5, v1, [Ljava/lang/Object;

    iput-object v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    :goto_36
    if-eqz v2, :cond_53

    aget-object v5, v0, v1

    if-eqz v5, :cond_50

    sget-object v6, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-eq v5, v6, :cond_50

    add-int v6, v4, v1

    aget v6, v3, v6

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/ObjToIntMap;->insertNewKey(Ljava/lang/Object;I)I

    move-result v5

    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget v7, v3, v1

    aput v7, v6, v5

    add-int/lit8 v2, v2, -0x1

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_53
    :goto_53
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
    .registers 6

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    const/4 v1, 0x0

    :goto_6
    if-eqz v0, :cond_21

    iget-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1e

    sget-object v3, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_1e

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    :goto_3
    if-eqz v0, :cond_d

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    return-void
.end method

.method public get(Ljava/lang/Object;I)I
    .registers 3

    if-nez p1, :cond_4

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    iget-object p2, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget p1, p2, p1

    return p1

    :cond_f
    return p2
.end method

.method public getExisting(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_4

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget p1, v0, p1

    return p1

    :cond_f
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    return p1
.end method

.method public getKeys([Ljava/lang/Object;I)V
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    const/4 v1, 0x0

    :goto_3
    if-eqz v0, :cond_1d

    iget-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1a

    sget-object v3, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_1a

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_14

    const/4 v2, 0x0

    :cond_14
    aput-object v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1d
    return-void
.end method

.method public getKeys()[Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->getKeys([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public has(Ljava/lang/Object;)Z
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method final initIterator(Lorg/mozilla/javascript/ObjToIntMap$Iterator;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    iget v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->init([Ljava/lang/Object;[II)V

    return-void
.end method

.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const/4 p1, 0x1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    move-object p1, v1

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->ensureIndex(Ljava/lang/Object;)I

    move-result p1

    iget-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aput v0, v2, p1

    if-eqz v1, :cond_16

    const/4 p1, 0x0

    goto :goto_1a

    :cond_16
    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_1a
    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public newIterator()Lorg/mozilla/javascript/ObjToIntMap$Iterator;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;-><init>(Lorg/mozilla/javascript/ObjToIntMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;I)V
    .registers 4

    if-nez p1, :cond_4

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->ensureIndex(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aput p2, v0, p1

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_4

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_16

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    iget p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    :cond_16
    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    return v0
.end method
