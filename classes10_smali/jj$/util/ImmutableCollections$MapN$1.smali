.class Ljj$/util/ImmutableCollections$MapN$1;
.super Ljava/util/AbstractSet;
.source "ImmutableCollections.java"


# instance fields
.field final synthetic this$0:Ljj$/util/ImmutableCollections$MapN;


# direct methods
.method constructor <init>(Ljj$/util/ImmutableCollections$MapN;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/ImmutableCollections$MapN$1;->this$0:Ljj$/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;

    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN$1;->this$0:Ljj$/util/ImmutableCollections$MapN;

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$MapN$MapNIterator;-><init>(Ljj$/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Ljj$/util/ImmutableCollections$MapN$1;->this$0:Ljj$/util/ImmutableCollections$MapN;

    iget v0, v0, Ljj$/util/ImmutableCollections$MapN;->size:I

    return v0
.end method
