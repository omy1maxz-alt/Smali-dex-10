.class public final synthetic Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;
.super Ljava/nio/channels/AsynchronousFileChannel;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/channels/AsynchronousFileChannel;)V
    .registers 2

    invoke-direct {p0}, Ljava/nio/channels/AsynchronousFileChannel;-><init>()V

    iput-object p1, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/channels/AsynchronousFileChannel;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/channels/AsynchronousFileChannel$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/channels/AsynchronousFileChannel$VivifiedWrapper;->wrappedValue:Ljava/nio/channels/AsynchronousFileChannel;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;-><init>(Ljj$/nio/channels/AsynchronousFileChannel;)V

    return-object v0
.end method


# virtual methods
.method public synthetic close()V
    .registers 2

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-interface {v0}, Ljj$/nio/channels/AsynchronousChannel;->close()V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    instance-of v1, p1, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;

    iget-object p1, p1, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic force(Z)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-virtual {v0, p1}, Ljj$/nio/channels/AsynchronousFileChannel;->force(Z)V

    return-void
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isOpen()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public synthetic lock(JJZ)Ljava/util/concurrent/Future;
    .registers 12

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljj$/nio/channels/AsynchronousFileChannel;->lock(JJZ)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 16

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-static {p7}, Ljj$/nio/channels/CompletionHandler$VivifiedWrapper;->convert(Ljava/nio/channels/CompletionHandler;)Ljj$/nio/channels/CompletionHandler;

    move-result-object v7

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Ljj$/nio/channels/AsynchronousFileChannel;->lock(JJZLjava/lang/Object;Ljj$/nio/channels/CompletionHandler;)V

    return-void
.end method

.method public synthetic read(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .registers 5

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/channels/AsynchronousFileChannel;->read(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public synthetic read(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 12

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-static {p5}, Ljj$/nio/channels/CompletionHandler$VivifiedWrapper;->convert(Ljava/nio/channels/CompletionHandler;)Ljj$/nio/channels/CompletionHandler;

    move-result-object v5

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljj$/nio/channels/AsynchronousFileChannel;->read(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljj$/nio/channels/CompletionHandler;)V

    return-void
.end method

.method public synthetic size()J
    .registers 3

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-virtual {v0}, Ljj$/nio/channels/AsynchronousFileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic truncate(J)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 4

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-virtual {v0, p1, p2}, Ljj$/nio/channels/AsynchronousFileChannel;->truncate(J)Ljj$/nio/channels/AsynchronousFileChannel;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->convert(Ljj$/nio/channels/AsynchronousFileChannel;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 12

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljj$/nio/channels/AsynchronousFileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .registers 5

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/channels/AsynchronousFileChannel;->write(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 12

    iget-object v0, p0, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->wrappedValue:Ljj$/nio/channels/AsynchronousFileChannel;

    invoke-static {p5}, Ljj$/nio/channels/CompletionHandler$VivifiedWrapper;->convert(Ljava/nio/channels/CompletionHandler;)Ljj$/nio/channels/CompletionHandler;

    move-result-object v5

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljj$/nio/channels/AsynchronousFileChannel;->write(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljj$/nio/channels/CompletionHandler;)V

    return-void
.end method
