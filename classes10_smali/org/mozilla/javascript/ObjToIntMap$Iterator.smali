.class public Lorg/mozilla/javascript/ObjToIntMap$Iterator;
.super Ljava/lang/Object;
.source "ObjToIntMap.java"


# instance fields
.field private cursor:I

.field private keys:[Ljava/lang/Object;

.field master:Lorg/mozilla/javascript/ObjToIntMap;

.field private remaining:I

.field private values:[I


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ObjToIntMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->master:Lorg/mozilla/javascript/ObjToIntMap;

    return-void
.end method


# virtual methods
.method public done()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->keys:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    aget-object v0, v0, v1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public getValue()I
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->values:[I

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    aget v0, v0, v1

    return v0
.end method

.method final init([Ljava/lang/Object;[II)V
    .registers 4

    iput-object p1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->keys:[Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->values:[I

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    iput p3, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    return-void
.end method

.method public next()V
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    if-nez v0, :cond_11

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    goto :goto_2b

    :cond_11
    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    :goto_13
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->keys:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2c

    invoke-static {}, Lorg/mozilla/javascript/ObjToIntMap;->access$000()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    :goto_2b
    return-void

    :cond_2c
    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    goto :goto_13
.end method

.method public setValue(I)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->values:[I

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    aput p1, v0, v1

    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->master:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ObjToIntMap;->initIterator(Lorg/mozilla/javascript/ObjToIntMap$Iterator;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    return-void
.end method
