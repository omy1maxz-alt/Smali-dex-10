.class public abstract Lcom/gold/youtube/om7753/streams/io/SharpStream;
.super Ljava/lang/Object;
.source "SharpStream.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract available()J
.end method

.method public abstract canRead()Z
.end method

.method public abstract canRewind()Z
.end method

.method public canSeek()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract canWrite()Z
.end method

.method public abstract close()V
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public abstract isClosed()Z
.end method

.method public length()J
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract read()I
.end method

.method public abstract read([B)I
.end method

.method public abstract read([BII)I
.end method

.method public abstract rewind()V
.end method

.method public seek(J)V
    .registers 3

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLength(J)V
    .registers 3

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract skip(J)J
.end method

.method public abstract write(B)V
.end method

.method public abstract write([B)V
.end method

.method public abstract write([BII)V
.end method
