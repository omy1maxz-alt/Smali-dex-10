.class Ljj$/sun/util/PreHashedMap$2$1;
.super Ljava/lang/Object;
.source "PreHashedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final i:Ljava/util/Iterator;

.field final synthetic this$1:Ljj$/sun/util/PreHashedMap$2;


# direct methods
.method constructor <init>(Ljj$/sun/util/PreHashedMap$2;)V
    .registers 3

    iput-object p1, p0, Ljj$/sun/util/PreHashedMap$2$1;->this$1:Ljj$/sun/util/PreHashedMap$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$2$1;->this$1:Ljj$/sun/util/PreHashedMap$2;

    iget-object v0, v0, Ljj$/sun/util/PreHashedMap$2;->this$0:Ljj$/sun/util/PreHashedMap;

    invoke-virtual {v0}, Ljj$/sun/util/PreHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/util/PreHashedMap$2$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$2$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/util/PreHashedMap$2$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2

    new-instance v0, Ljj$/sun/util/PreHashedMap$2$1$1;

    invoke-direct {v0, p0}, Ljj$/sun/util/PreHashedMap$2$1$1;-><init>(Ljj$/sun/util/PreHashedMap$2$1;)V

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
