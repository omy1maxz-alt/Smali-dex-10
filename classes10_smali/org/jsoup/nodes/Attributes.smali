.class public Lorg/jsoup/nodes/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# instance fields
.field keys:[Ljava/lang/String;

.field private size:I

.field vals:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Attributes;)I
    .registers 1

    iget p0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return p0
.end method

.method static synthetic access$100(Lorg/jsoup/nodes/Attributes;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/jsoup/nodes/Attributes;I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    return-void
.end method

.method private addObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Attributes;->checkCapacity(I)V

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return-void
.end method

.method private checkCapacity(I)V
    .registers 5

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_10

    return-void

    :cond_10
    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v2, v1, 0x2

    :cond_17
    if-le p1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move p1, v2

    :goto_1b
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    return-void
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_7

    :cond_5
    check-cast p0, Ljava/lang/String;

    :goto_7
    return-object p0
.end method

.method private indexOfKeyIgnoreCase(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method static internalKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isInternalKey(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_13

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private remove(I)V
    .registers 6

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1d

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    iget p1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aput-object v1, v0, p1

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addAll(Lorg/jsoup/nodes/Attributes;)V
    .registers 5

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iget v1, p1, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Attributes;->checkCapacity(I)V

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Attribute;

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_1a

    :cond_2c
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    goto :goto_1a

    :cond_38
    return-void
.end method

.method public asList()Ljava/util/List;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_29

    :cond_17
    new-instance v2, Lorg/jsoup/nodes/Attribute;

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Attributes;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attributes;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_21

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iput v1, v0, Lorg/jsoup/nodes/Attributes;->size:I

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    return-object v0

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deduplicate(Lorg/jsoup/parser/ParseSettings;)I
    .registers 8

    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase()Z

    move-result p1

    const/4 v0, 0x0

    :goto_d
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_43

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_15
    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_41

    aget-object v5, v4, v3

    if-nez v5, :cond_1f

    goto :goto_41

    :cond_1f
    if-eqz p1, :cond_29

    aget-object v4, v4, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    :cond_29
    if-nez p1, :cond_3e

    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    :cond_37
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v3}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_41
    :goto_41
    move v1, v2

    goto :goto_d

    :cond_43
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_44

    :cond_12
    check-cast p1, Lorg/jsoup/nodes/Attributes;

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iget v3, p1, Lorg/jsoup/nodes/Attributes;->size:I

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    iget v3, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v2, v3, :cond_43

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    return v1

    :cond_2c
    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p1, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aget-object v3, v5, v3

    if-nez v4, :cond_39

    if-eqz v3, :cond_40

    return v1

    :cond_39
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    return v1

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_43
    return v0

    :cond_44
    :goto_44
    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const-string p1, ""

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const-string p1, ""

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public hasKeyIgnoreCase(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public html()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    :try_start_4
    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_17

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Lorg/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 8

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_30

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_2d

    :cond_10
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jsoup/nodes/Attribute;->getValidKey(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x20

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-static {v2, v3, v4, p2}, Lorg/jsoup/nodes/Attribute;->htmlNoValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_30
    return-void
.end method

.method indexOfKey(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/jsoup/nodes/Attributes$1;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method public normalize()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .registers 5

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_12

    :cond_f
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :goto_12
    return-object p0
.end method

.method public put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;
    .registers 4

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    iput-object p0, p1, Lorg/jsoup/nodes/Attribute;->parent:Lorg/jsoup/nodes/Attributes;

    return-object p0
.end method

.method putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aput-object p2, v1, v0

    iget-object p2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    iget-object p2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aput-object p1, p2, v0

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :cond_1d
    :goto_1d
    return-void
.end method

.method putUserData(Ljava/lang/String;Ljava/lang/Object;)Lorg/jsoup/nodes/Attributes;
    .registers 5

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->internalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_d
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    iget-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_1f

    :cond_1c
    invoke-direct {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1f
    return-object p0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
