.class final Ljj$/util/CollSer;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final IMM_LIST:I = 0x1

.field static final IMM_MAP:I = 0x3

.field static final IMM_SET:I = 0x2

.field private static final serialVersionUID:J = 0x578eabb63a1ba811L


# instance fields
.field private transient array:[Ljava/lang/Object;

.field private final tag:I


# direct methods
.method varargs constructor <init>(I[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/util/CollSer;->tag:I

    iput-object p2, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1a

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_17

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    iput-object v1, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    return-void

    :cond_1a
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negative length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 6

    :try_start_0
    iget-object v0, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    if-eqz v0, :cond_58

    iget v0, p0, Ljj$/util/CollSer;->tag:I

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_6e

    new-instance v0, Ljava/io/InvalidObjectException;

    goto :goto_44

    :pswitch_10  #0x3
    iget-object v0, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_1a

    invoke-static {}, Ljj$/util/ImmutableCollections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1a
    iget-object v0, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2e

    new-instance v0, Ljj$/util/ImmutableCollections$Map1;

    iget-object v3, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    aget-object v1, v3, v1

    iget-object v3, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-direct {v0, v1, v2}, Ljj$/util/ImmutableCollections$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2e
    new-instance v0, Ljj$/util/ImmutableCollections$MapN;

    iget-object v1, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0

    :pswitch_36  #0x2
    iget-object v0, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport3;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :pswitch_3d  #0x1
    iget-object v0, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :goto_44
    const-string v3, "invalid flags 0x%x"

    iget v4, p0, Ljj$/util/CollSer;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "null array"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_60} :catch_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_60} :catch_60

    :catch_60
    move-exception v0

    goto :goto_63

    :catch_62
    move-exception v0

    :goto_63
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "invalid object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_36  #00000002
        :pswitch_10  #00000003
    .end packed-switch
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Ljj$/util/CollSer;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_19
    return-void
.end method
