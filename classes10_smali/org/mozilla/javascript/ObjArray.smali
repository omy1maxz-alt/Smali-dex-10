.class public Lorg/mozilla/javascript/ObjArray;
.super Ljava/lang/Object;
.source "ObjArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FIELDS_STORE_SIZE:I = 0x5

.field private static final serialVersionUID:J = 0x39f02f75d6f74578L


# instance fields
.field private transient data:[Ljava/lang/Object;

.field private transient f0:Ljava/lang/Object;

.field private transient f1:Ljava/lang/Object;

.field private transient f2:Ljava/lang/Object;

.field private transient f3:Ljava/lang/Object;

.field private transient f4:Ljava/lang/Object;

.field private sealed:Z

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .registers 6

    const/4 v0, 0x5

    sub-int/2addr p1, v0

    if-lez p1, :cond_2e

    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    const/16 v2, 0xa

    if-nez v1, :cond_14

    if-ge v2, p1, :cond_d

    goto :goto_f

    :cond_d
    const/16 p1, 0xa

    :goto_f
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    goto :goto_2d

    :cond_14
    array-length v3, v1

    if-ge v3, p1, :cond_2d

    if-gt v3, v0, :cond_1a

    goto :goto_1c

    :cond_1a
    mul-int/lit8 v2, v3, 0x2

    :goto_1c
    if-ge v2, p1, :cond_1f

    goto :goto_20

    :cond_1f
    move p1, v2

    :goto_20
    new-array p1, p1, [Ljava/lang/Object;

    iget v2, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-le v2, v0, :cond_2b

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    iput-object p1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private getImpl(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x5

    aget-object p1, v0, p1

    return-object p1

    :cond_15
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    return-object p1

    :cond_18
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    return-object p1

    :cond_1b
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    return-object p1

    :cond_1e
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    return-object p1

    :cond_21
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    return-object p1
.end method

.method private static onEmptyStackTopRead()Ljava/lang/RuntimeException;
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Empty stack"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static onInvalidIndex(II)Ljava/lang/RuntimeException;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ∉ [0, "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static onSeledMutation()Ljava/lang/RuntimeException;
    .registers 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to modify sealed array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_e

    add-int/lit8 v1, v0, -0x5

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eq v1, v0, :cond_1b

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method private setImpl(ILjava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x5

    aput-object p2, v0, p1

    goto :goto_23

    :cond_15
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    goto :goto_23

    :cond_18
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    goto :goto_23

    :cond_1b
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    goto :goto_23

    :cond_1e
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    goto :goto_23

    :cond_21
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    :goto_23
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    const/4 v1, 0x0

    :goto_6
    if-eq v1, v0, :cond_12

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 10

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    const/4 v1, 0x1

    if-ltz p1, :cond_6d

    if-gt p1, v0, :cond_6d

    iget-boolean v2, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-nez v2, :cond_68

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eqz p1, :cond_1a

    if-eq p1, v1, :cond_24

    if-eq p1, v4, :cond_2e

    if-eq p1, v3, :cond_38

    if-eq p1, v2, :cond_42

    goto :goto_4d

    :cond_1a
    if-nez v0, :cond_1f

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    goto :goto_64

    :cond_1f
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    move-object p2, p1

    :cond_24
    if-ne v0, v1, :cond_29

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    goto :goto_64

    :cond_29
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    move-object p2, p1

    :cond_2e
    if-ne v0, v4, :cond_33

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    goto :goto_64

    :cond_33
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    move-object p2, p1

    :cond_38
    if-ne v0, v3, :cond_3d

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    goto :goto_64

    :cond_3d
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    move-object p2, p1

    :cond_42
    if-ne v0, v2, :cond_47

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    goto :goto_64

    :cond_47
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    move-object p2, p1

    const/4 p1, 0x5

    :goto_4d
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/ObjArray;->ensureCapacity(I)V

    if-eq p1, v0, :cond_5f

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    add-int/lit8 v3, p1, -0x5

    add-int/lit8 v4, v3, 0x1

    sub-int v6, v0, p1

    invoke-static {v2, v3, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5f
    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    sub-int/2addr p1, v5

    aput-object p2, v2, p1

    :goto_64
    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    return-void

    :cond_68
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_6d
    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ObjArray;->onInvalidIndex(II)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final add(Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-nez v0, :cond_16

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_e

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/ObjArray;->ensureCapacity(I)V

    :cond_e
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    return-void

    :cond_16
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final clear()V
    .registers 5

    iget-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-nez v0, :cond_14

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-eq v2, v0, :cond_11

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    iput v1, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    return-void

    :cond_14
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_1a

    :goto_19
    throw v0

    :goto_1a
    goto :goto_19
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3

    if-ltz p1, :cond_b

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-ge p1, v0, :cond_b

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ObjArray;->onInvalidIndex(II)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    const/4 v1, 0x0

    :goto_3
    if-eq v1, v0, :cond_18

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_17

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    :goto_17
    return v1

    :cond_18
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isSealed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    :cond_2
    if-eqz v0, :cond_15

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_14

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_14
    return v0

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public final peek()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-eqz v0, :cond_b

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onEmptyStackTopRead()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final pop()Ljava/lang/Object;
    .registers 6

    iget-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-nez v0, :cond_42

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    const/4 v2, 0x1

    if-eq v0, v2, :cond_31

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_27

    const/4 v2, 0x4

    if-eq v0, v2, :cond_22

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    add-int/lit8 v3, v0, -0x5

    aget-object v4, v2, v3

    aput-object v1, v2, v3

    goto :goto_3a

    :cond_22
    iget-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    goto :goto_3a

    :cond_27
    iget-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    goto :goto_3a

    :cond_2c
    iget-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    goto :goto_3a

    :cond_31
    iget-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    goto :goto_3a

    :cond_36
    iget-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    :goto_3a
    iput v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    return-object v4

    :cond_3d
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onEmptyStackTopRead()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_42
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final push(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final remove(I)V
    .registers 8

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-ltz p1, :cond_68

    if-ge p1, v0, :cond_68

    iget-boolean v1, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-nez v1, :cond_63

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1c

    if-eq p1, v4, :cond_25

    if-eq p1, v3, :cond_2e

    if-eq p1, v2, :cond_37

    if-eq p1, v1, :cond_40

    goto :goto_4d

    :cond_1c
    if-nez v0, :cond_21

    iput-object v5, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    goto :goto_60

    :cond_21
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    :cond_25
    if-ne v0, v4, :cond_2a

    iput-object v5, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    goto :goto_60

    :cond_2a
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    :cond_2e
    if-ne v0, v3, :cond_33

    iput-object v5, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    goto :goto_60

    :cond_33
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    :cond_37
    if-ne v0, v2, :cond_3c

    iput-object v5, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    goto :goto_60

    :cond_3c
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    :cond_40
    if-ne v0, v1, :cond_45

    iput-object v5, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    goto :goto_60

    :cond_45
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    const/4 p1, 0x5

    :goto_4d
    if-eq p1, v0, :cond_5a

    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    add-int/lit8 v2, p1, -0x5

    add-int/lit8 v3, v2, 0x1

    sub-int p1, v0, p1

    invoke-static {v1, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5a
    iget-object p1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    add-int/lit8 v1, v0, -0x5

    aput-object v5, p1, v1

    :goto_60
    iput v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    return-void

    :cond_63
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_68
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ObjArray;->onInvalidIndex(II)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final seal()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    return-void
.end method

.method public final set(ILjava/lang/Object;)V
    .registers 4

    if-ltz p1, :cond_13

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-ge p1, v0, :cond_13

    iget-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    return-void

    :cond_e
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_13
    iget p2, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ObjArray;->onInvalidIndex(II)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setSize(I)V
    .registers 5

    if-ltz p1, :cond_24

    iget-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-nez v0, :cond_1f

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-ge p1, v0, :cond_14

    move v1, p1

    :goto_b
    if-eq v1, v0, :cond_1c

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    if-le p1, v0, :cond_1c

    const/4 v0, 0x5

    if-le p1, v0, :cond_1c

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjArray;->ensureCapacity(I)V

    :cond_1c
    iput p1, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    return-void

    :cond_1f
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    return v0
.end method

.method public final toArray([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;I)V

    return-void
.end method

.method public final toArray([Ljava/lang/Object;I)V
    .registers 8

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-eqz v0, :cond_39

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_34

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_28

    const/4 v2, 0x4

    if-eq v0, v2, :cond_22

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1c

    iget-object v3, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x5

    sub-int/2addr v0, v2

    invoke-static {v3, v1, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    add-int/lit8 v0, p2, 0x4

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    aput-object v2, p1, v0

    :cond_22
    add-int/lit8 v0, p2, 0x3

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    aput-object v2, p1, v0

    :cond_28
    add-int/lit8 v0, p2, 0x2

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    aput-object v2, p1, v0

    :cond_2e
    add-int/lit8 v0, p2, 0x1

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    aput-object v2, p1, v0

    :cond_34
    add-int/2addr p2, v1

    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    aput-object v0, p1, p2

    :cond_39
    return-void
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;I)V

    return-object v0
.end method
