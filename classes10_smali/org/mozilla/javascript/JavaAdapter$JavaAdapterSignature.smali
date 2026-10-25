.class Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;
.super Ljava/lang/Object;
.source "JavaAdapter.java"


# instance fields
.field interfaces:[Ljava/lang/Class;

.field names:Lorg/mozilla/javascript/ObjToIntMap;

.field superClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/ObjToIntMap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->superClass:Ljava/lang/Class;

    iput-object p2, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    iput-object p3, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;

    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->superClass:Ljava/lang/Class;

    iget-object v2, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->superClass:Ljava/lang/Class;

    if-eq v0, v2, :cond_f

    return v1

    :cond_f
    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    iget-object v2, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    if-eq v0, v2, :cond_2c

    array-length v0, v0

    array-length v2, v2

    if-eq v0, v2, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iget-object v2, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_2c

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    aget-object v3, v3, v0

    if-eq v2, v3, :cond_29

    return v1

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2c
    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v0

    iget-object v2, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v2

    if-eq v0, v2, :cond_3b

    return v1

    :cond_3b
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    iget-object v2, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;-><init>(Lorg/mozilla/javascript/ObjToIntMap;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    :goto_45
    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v2

    if-nez v2, :cond_64

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getValue()I

    move-result v3

    iget-object v4, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v2, v5}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v2

    if-eq v3, v2, :cond_60

    return v1

    :cond_60
    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    goto :goto_45

    :cond_64
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->superClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
