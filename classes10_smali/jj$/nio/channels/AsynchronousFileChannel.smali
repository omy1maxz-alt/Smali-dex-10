.class public abstract Ljj$/nio/channels/AsynchronousFileChannel;
.super Ljava/lang/Object;
.source "AsynchronousFileChannel.java"

# interfaces
.implements Ljj$/nio/channels/AsynchronousChannel;


# static fields
.field private static final NO_ATTRIBUTES:[Ljj$/nio/file/attribute/FileAttribute;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljj$/nio/file/attribute/FileAttribute;

    sput-object v0, Ljj$/nio/channels/AsynchronousFileChannel;->NO_ATTRIBUTES:[Ljj$/nio/file/attribute/FileAttribute;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs open(Ljj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/channels/AsynchronousFileChannel;
    .registers 6

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->newAsynchronousFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/channels/AsynchronousFileChannel;

    move-result-object v1

    return-object v1
.end method

.method public static varargs open(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljj$/nio/channels/AsynchronousFileChannel;
    .registers 5

    array-length v0, p1

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_10
    const/4 v1, 0x0

    sget-object v2, Ljj$/nio/channels/AsynchronousFileChannel;->NO_ATTRIBUTES:[Ljj$/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1, v2}, Ljj$/nio/channels/AsynchronousFileChannel;->open(Ljj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/channels/AsynchronousFileChannel;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract force(Z)V
.end method

.method public final lock()Ljava/util/concurrent/Future;
    .registers 7

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljj$/nio/channels/AsynchronousFileChannel;->lock(JJZ)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public abstract lock(JJZ)Ljava/util/concurrent/Future;
.end method

.method public abstract lock(JJZLjava/lang/Object;Ljj$/nio/channels/CompletionHandler;)V
.end method

.method public final lock(Ljava/lang/Object;Ljj$/nio/channels/CompletionHandler;)V
    .registers 11

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Ljj$/nio/channels/AsynchronousFileChannel;->lock(JJZLjava/lang/Object;Ljj$/nio/channels/CompletionHandler;)V

    return-void
.end method

.method public abstract read(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
.end method

.method public abstract read(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljj$/nio/channels/CompletionHandler;)V
.end method

.method public abstract size()J
.end method

.method public abstract truncate(J)Ljj$/nio/channels/AsynchronousFileChannel;
.end method

.method public final tryLock()Ljava/nio/channels/FileLock;
    .registers 7

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljj$/nio/channels/AsynchronousFileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v1

    return-object v1
.end method

.method public abstract tryLock(JJZ)Ljava/nio/channels/FileLock;
.end method

.method public abstract write(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
.end method

.method public abstract write(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljj$/nio/channels/CompletionHandler;)V
.end method
