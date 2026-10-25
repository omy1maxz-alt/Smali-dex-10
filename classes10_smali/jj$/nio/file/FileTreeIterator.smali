.class Ljj$/nio/file/FileTreeIterator;
.super Ljava/lang/Object;
.source "FileTreeIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private next:Ljj$/nio/file/FileTreeWalker$Event;

.field private final walker:Ljj$/nio/file/FileTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method varargs constructor <init>(Ljj$/nio/file/Path;I[Ljj$/nio/file/FileVisitOption;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljj$/nio/file/FileTreeWalker;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljj$/nio/file/FileTreeWalker;-><init>(Ljava/util/Collection;I)V

    iput-object v0, p0, Ljj$/nio/file/FileTreeIterator;->walker:Ljj$/nio/file/FileTreeWalker;

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->walker:Ljj$/nio/file/FileTreeWalker;

    invoke-virtual {v0, p1}, Ljj$/nio/file/FileTreeWalker;->walk(Ljj$/nio/file/Path;)Ljj$/nio/file/FileTreeWalker$Event;

    move-result-object v0

    iput-object v0, p0, Ljj$/nio/file/FileTreeIterator;->next:Ljj$/nio/file/FileTreeWalker$Event;

    nop

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->next:Ljj$/nio/file/FileTreeWalker$Event;

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_20

    return-void

    :cond_20
    throw v0
.end method

.method private fetchNextIfNeeded()V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->next:Ljj$/nio/file/FileTreeWalker$Event;

    if-nez v0, :cond_2a

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->walker:Ljj$/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker;->next()Ljj$/nio/file/FileTreeWalker$Event;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker$Event;->type()Ljj$/nio/file/FileTreeWalker$EventType;

    move-result-object v2

    sget-object v3, Ljj$/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljj$/nio/file/FileTreeWalker$EventType;

    if-eq v2, v3, :cond_1d

    iput-object v0, p0, Ljj$/nio/file/FileTreeIterator;->next:Ljj$/nio/file/FileTreeWalker$Event;

    return-void

    :cond_1d
    iget-object v2, p0, Ljj$/nio/file/FileTreeIterator;->walker:Ljj$/nio/file/FileTreeWalker;

    invoke-virtual {v2}, Ljj$/nio/file/FileTreeWalker;->next()Ljj$/nio/file/FileTreeWalker$Event;

    move-result-object v0

    goto :goto_a

    :cond_24
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_2a
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->walker:Ljj$/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker;->close()V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->walker:Ljj$/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Ljj$/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->next:Ljj$/nio/file/FileTreeWalker$Event;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/FileTreeIterator;->next()Ljj$/nio/file/FileTreeWalker$Event;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljj$/nio/file/FileTreeWalker$Event;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->walker:Ljj$/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Ljj$/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->next:Ljj$/nio/file/FileTreeWalker$Event;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljj$/nio/file/FileTreeIterator;->next:Ljj$/nio/file/FileTreeWalker$Event;

    const/4 v1, 0x0

    iput-object v1, p0, Ljj$/nio/file/FileTreeIterator;->next:Ljj$/nio/file/FileTreeWalker$Event;

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
