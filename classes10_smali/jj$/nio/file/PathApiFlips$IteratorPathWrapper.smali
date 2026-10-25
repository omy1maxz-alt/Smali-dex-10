.class public Ljj$/nio/file/PathApiFlips$IteratorPathWrapper;
.super Ljava/lang/Object;
.source "PathApiFlips.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/PathApiFlips$IteratorPathWrapper;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/PathApiFlips$IteratorPathWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/PathApiFlips$IteratorPathWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/PathApiFlips;->convertPath(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/PathApiFlips$IteratorPathWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
