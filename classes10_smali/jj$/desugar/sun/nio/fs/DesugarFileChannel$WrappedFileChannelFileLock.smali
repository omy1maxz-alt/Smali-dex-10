.class Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;
.super Ljava/nio/channels/FileLock;
.source "DesugarFileChannel.java"


# instance fields
.field private final delegate:Ljava/nio/channels/FileLock;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileLock;Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;)V
    .registers 10

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->isShared()Z

    move-result v6

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    iput-object p1, v0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;->delegate:Ljava/nio/channels/FileLock;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;->delegate:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;->delegate:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    return-void
.end method
