.class Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;
.super Ljava/lang/Object;
.source "NativeObject.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final synthetic this$2:Lorg/mozilla/javascript/NativeObject$EntrySet$1;

.field final synthetic val$ekey:Ljava/lang/Object;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativeObject$EntrySet$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->this$2:Lorg/mozilla/javascript/NativeObject$EntrySet$1;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    if-nez v0, :cond_13

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_1d

    :cond_13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :goto_1d
    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    if-nez v0, :cond_28

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_33

    goto :goto_32

    :cond_28
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    :goto_32
    const/4 v1, 0x1

    :cond_33
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
