.class Ljj$/nio/file/FileTreeWalker;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private final followLinks:Z

.field private final linkOptions:[Ljj$/nio/file/LinkOption;

.field private final maxDepth:I

.field private final stack:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/nio/file/FileVisitOption;

    sget-object v3, Ljj$/nio/file/FileTreeWalker$1;->$SwitchMap$java$nio$file$FileVisitOption:[I

    invoke-virtual {v2}, Ljj$/nio/file/FileVisitOption;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_50

    new-instance v1, Ljava/lang/AssertionError;

    const-string v3, "Should not get here"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_2e  #0x1
    const/4 v0, 0x1

    goto :goto_f

    :cond_30
    if-ltz p2, :cond_47

    iput-boolean v0, p0, Ljj$/nio/file/FileTreeWalker;->followLinks:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    new-array v1, v1, [Ljj$/nio/file/LinkOption;

    goto :goto_42

    :cond_3a
    const/4 v2, 0x1

    new-array v2, v2, [Ljj$/nio/file/LinkOption;

    sget-object v3, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    aput-object v3, v2, v1

    move-object v1, v2

    :goto_42
    iput-object v1, p0, Ljj$/nio/file/FileTreeWalker;->linkOptions:[Ljj$/nio/file/LinkOption;

    iput p2, p0, Ljj$/nio/file/FileTreeWalker;->maxDepth:I

    return-void

    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'maxDepth\' is negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_2e  #00000001
    .end packed-switch
.end method

.method private getAttributes(Ljj$/nio/file/Path;Z)Ljj$/nio/file/attribute/BasicFileAttributes;
    .registers 8

    if-eqz p2, :cond_20

    instance-of v0, p1, Ljj$/sun/nio/fs/BasicFileAttributesHolder;

    if-eqz v0, :cond_20

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_20

    move-object v0, p1

    check-cast v0, Ljj$/sun/nio/fs/BasicFileAttributesHolder;

    invoke-interface {v0}, Ljj$/sun/nio/fs/BasicFileAttributesHolder;->get()Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-boolean v1, p0, Ljj$/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1f
    return-object v0

    :cond_20
    :try_start_20
    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributes;

    iget-object v1, p0, Ljj$/nio/file/FileTreeWalker;->linkOptions:[Ljj$/nio/file/LinkOption;

    invoke-static {p1, v0, v1}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_29

    goto :goto_3d

    :catch_29
    move-exception v0

    iget-boolean v1, p0, Ljj$/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v1, :cond_3e

    const-class v1, Ljj$/nio/file/attribute/BasicFileAttributes;

    const/4 v2, 0x1

    new-array v2, v2, [Ljj$/nio/file/LinkOption;

    const/4 v3, 0x0

    sget-object v4, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    aput-object v4, v2, v3

    invoke-static {p1, v1, v2}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    move-object v0, v1

    :goto_3d
    return-object v0

    :cond_3e
    throw v0
.end method

.method private visit(Ljj$/nio/file/Path;ZZ)Ljj$/nio/file/FileTreeWalker$Event;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p3}, Ljj$/nio/file/FileTreeWalker;->getAttributes(Ljj$/nio/file/Path;Z)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_6d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_68

    nop

    iget-object v2, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget v3, p0, Ljj$/nio/file/FileTreeWalker;->maxDepth:I

    if-ge v2, v3, :cond_60

    invoke-interface {v1}, Ljj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_60

    :cond_17
    iget-boolean v3, p0, Ljj$/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljj$/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Ljj$/nio/file/FileTreeWalker;->wouldLoop(Ljj$/nio/file/Path;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    new-instance v0, Ljj$/nio/file/FileTreeWalker$Event;

    sget-object v3, Ljj$/nio/file/FileTreeWalker$EventType;->ENTRY:Ljj$/nio/file/FileTreeWalker$EventType;

    new-instance v4, Ljava/nio/file/FileSystemLoopException;

    invoke-interface {p1}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, p1, v4}, Ljj$/nio/file/FileTreeWalker$Event;-><init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljava/io/IOException;)V

    return-object v0

    :cond_36
    const/4 v3, 0x0

    :try_start_37
    invoke-static {p1}, Ljj$/nio/file/Files;->newDirectoryStream(Ljj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_57
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3b} :catch_52

    nop

    iget-object v3, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    new-instance v4, Ljj$/nio/file/FileTreeWalker$DirectoryNode;

    invoke-interface {v1}, Ljj$/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, p1, v5, v0}, Ljj$/nio/file/FileTreeWalker$DirectoryNode;-><init>(Ljj$/nio/file/Path;Ljava/lang/Object;Ljava/nio/file/DirectoryStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    new-instance v3, Ljj$/nio/file/FileTreeWalker$Event;

    sget-object v4, Ljj$/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljj$/nio/file/FileTreeWalker$EventType;

    invoke-direct {v3, v4, p1, v1}, Ljj$/nio/file/FileTreeWalker$Event;-><init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljj$/nio/file/attribute/BasicFileAttributes;)V

    return-object v3

    :catch_52
    move-exception v4

    if-eqz p2, :cond_56

    return-object v0

    :cond_56
    throw v4

    :catch_57
    move-exception v0

    new-instance v4, Ljj$/nio/file/FileTreeWalker$Event;

    sget-object v5, Ljj$/nio/file/FileTreeWalker$EventType;->ENTRY:Ljj$/nio/file/FileTreeWalker$EventType;

    invoke-direct {v4, v5, p1, v0}, Ljj$/nio/file/FileTreeWalker$Event;-><init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljava/io/IOException;)V

    return-object v4

    :cond_60
    :goto_60
    new-instance v0, Ljj$/nio/file/FileTreeWalker$Event;

    sget-object v3, Ljj$/nio/file/FileTreeWalker$EventType;->ENTRY:Ljj$/nio/file/FileTreeWalker$EventType;

    invoke-direct {v0, v3, p1, v1}, Ljj$/nio/file/FileTreeWalker$Event;-><init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljj$/nio/file/attribute/BasicFileAttributes;)V

    return-object v0

    :catch_68
    move-exception v1

    if-eqz p2, :cond_6c

    return-object v0

    :cond_6c
    throw v1

    :catch_6d
    move-exception v0

    new-instance v1, Ljj$/nio/file/FileTreeWalker$Event;

    sget-object v2, Ljj$/nio/file/FileTreeWalker$EventType;->ENTRY:Ljj$/nio/file/FileTreeWalker$EventType;

    invoke-direct {v1, v2, p1, v0}, Ljj$/nio/file/FileTreeWalker$Event;-><init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljava/io/IOException;)V

    return-object v1
.end method

.method private wouldLoop(Ljj$/nio/file/Path;Ljava/lang/Object;)Z
    .registers 8

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/nio/file/FileTreeWalker$DirectoryNode;

    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->key()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p2, :cond_22

    if-eqz v2, :cond_22

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    return v3

    :cond_22
    :try_start_22
    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljj$/nio/file/Path;

    move-result-object v4

    invoke-static {p1, v4}, Ljj$/nio/file/Files;->isSameFile(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)Z

    move-result v4
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_30
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_2a} :catch_2e

    if-eqz v4, :cond_2d

    return v3

    :cond_2d
    goto :goto_31

    :catch_2e
    move-exception v3

    goto :goto_31

    :catch_30
    move-exception v3

    :cond_31
    :goto_31
    goto :goto_6

    :cond_32
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Ljj$/nio/file/FileTreeWalker;->closed:Z

    if-nez v0, :cond_13

    :goto_4
    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljj$/nio/file/FileTreeWalker;->pop()V

    goto :goto_4

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/nio/file/FileTreeWalker;->closed:Z

    :cond_13
    return-void
.end method

.method isOpen()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/nio/file/FileTreeWalker;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method next()Ljj$/nio/file/FileTreeWalker$Event;
    .registers 7

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->skipped()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :try_start_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/nio/file/Path;
    :try_end_24
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_18 .. :try_end_24} :catch_26

    move-object v1, v4

    :cond_25
    goto :goto_2b

    :catch_26
    move-exception v4

    invoke-virtual {v4}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    :cond_2b
    :goto_2b
    if-nez v1, :cond_4e

    :try_start_2d
    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava/nio/file/DirectoryStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception v3

    if-nez v2, :cond_3a

    move-object v2, v3

    goto :goto_3d

    :cond_3a
    invoke-virtual {v2, v3}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    iget-object v3, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    new-instance v3, Ljj$/nio/file/FileTreeWalker$Event;

    sget-object v4, Ljj$/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljj$/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljj$/nio/file/Path;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Ljj$/nio/file/FileTreeWalker$Event;-><init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljava/io/IOException;)V

    return-object v3

    :cond_4e
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v3}, Ljj$/nio/file/FileTreeWalker;->visit(Ljj$/nio/file/Path;ZZ)Ljj$/nio/file/FileTreeWalker$Event;

    move-result-object v1

    if-eqz v1, :cond_c

    return-object v1
.end method

.method pop()V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;

    :try_start_10
    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava/nio/file/DirectoryStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move-exception v1

    :goto_19
    nop

    :cond_1a
    return-void
.end method

.method skipRemainingSiblings()V
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->skip()V

    :cond_13
    return-void
.end method

.method walk(Ljj$/nio/file/Path;)Ljj$/nio/file/FileTreeWalker$Event;
    .registers 4

    iget-boolean v0, p0, Ljj$/nio/file/FileTreeWalker;->closed:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljj$/nio/file/FileTreeWalker;->visit(Ljj$/nio/file/Path;ZZ)Ljj$/nio/file/FileTreeWalker$Event;

    move-result-object v0

    nop

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
