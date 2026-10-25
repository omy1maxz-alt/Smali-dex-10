.class public Lcom/gold/youtube/om7753/extractor/utils/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private firstObject:Ljava/io/Serializable;

.field private secondObject:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljava/io/Serializable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iget-object v4, v2, Lcom/gold/youtube/om7753/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    iget-object v4, v2, Lcom/gold/youtube/om7753/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public getFirst()Ljava/io/Serializable;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    return-object v0
.end method

.method public getSecond()Ljava/io/Serializable;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setFirst(Ljava/io/Serializable;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    return-void
.end method

.method public setSecond(Ljava/io/Serializable;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
