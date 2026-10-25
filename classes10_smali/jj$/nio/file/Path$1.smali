.class Ljj$/nio/file/Path$1;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private i:I

.field final synthetic this$0:Ljj$/nio/file/Path;


# direct methods
.method constructor <init>(Ljj$/nio/file/Path;)V
    .registers 3

    iput-object p1, p0, Ljj$/nio/file/Path$1;->this$0:Ljj$/nio/file/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljj$/nio/file/Path$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Ljj$/nio/file/Path$1;->i:I

    iget-object v1, p0, Ljj$/nio/file/Path$1;->this$0:Ljj$/nio/file/Path;

    invoke-interface {v1}, Ljj$/nio/file/Path;->getNameCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/Path$1;->next()Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljj$/nio/file/Path;
    .registers 3

    iget v0, p0, Ljj$/nio/file/Path$1;->i:I

    iget-object v1, p0, Ljj$/nio/file/Path$1;->this$0:Ljj$/nio/file/Path;

    invoke-interface {v1}, Ljj$/nio/file/Path;->getNameCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Ljj$/nio/file/Path$1;->this$0:Ljj$/nio/file/Path;

    iget v1, p0, Ljj$/nio/file/Path$1;->i:I

    invoke-interface {v0, v1}, Ljj$/nio/file/Path;->getName(I)Ljj$/nio/file/Path;

    move-result-object v0

    iget v1, p0, Ljj$/nio/file/Path$1;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljj$/nio/file/Path$1;->i:I

    return-object v0

    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
