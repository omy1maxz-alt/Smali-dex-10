.class Ljj$/sun/util/PreHashedMap$2$1$1;
.super Ljava/lang/Object;
.source "PreHashedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field k:Ljava/lang/String;

.field final synthetic this$2:Ljj$/sun/util/PreHashedMap$2$1;


# direct methods
.method constructor <init>(Ljj$/sun/util/PreHashedMap$2$1;)V
    .registers 3

    iput-object p1, p0, Ljj$/sun/util/PreHashedMap$2$1$1;->this$2:Ljj$/sun/util/PreHashedMap$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$2$1$1;->this$2:Ljj$/sun/util/PreHashedMap$2$1;

    iget-object v0, v0, Ljj$/sun/util/PreHashedMap$2$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Ljj$/sun/util/PreHashedMap$2$1$1;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_44

    goto :goto_28

    :cond_1a
    invoke-virtual {p0}, Ljj$/sun/util/PreHashedMap$2$1$1;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    :goto_28
    invoke-virtual {p0}, Ljj$/sun/util/PreHashedMap$2$1$1;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_35

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_44

    goto :goto_43

    :cond_35
    invoke-virtual {p0}, Ljj$/sun/util/PreHashedMap$2$1$1;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    :goto_43
    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    return v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/util/PreHashedMap$2$1$1;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$2$1$1;->this$2:Ljj$/sun/util/PreHashedMap$2$1;

    iget-object v0, v0, Ljj$/sun/util/PreHashedMap$2$1;->this$1:Ljj$/sun/util/PreHashedMap$2;

    iget-object v0, v0, Ljj$/sun/util/PreHashedMap$2;->this$0:Ljj$/sun/util/PreHashedMap;

    iget-object v1, p0, Ljj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljj$/sun/util/PreHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$2$1$1;->this$2:Ljj$/sun/util/PreHashedMap$2$1;

    iget-object v0, v0, Ljj$/sun/util/PreHashedMap$2$1;->this$1:Ljj$/sun/util/PreHashedMap$2;

    iget-object v0, v0, Ljj$/sun/util/PreHashedMap$2;->this$0:Ljj$/sun/util/PreHashedMap;

    iget-object v1, p0, Ljj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljj$/sun/util/PreHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-nez v0, :cond_16

    const/4 v2, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v1, v2

    return v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
