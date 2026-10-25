.class Lokhttp4/internal/cache/FaultHidingSink;
.super Lokin/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method constructor <init>(Lokin/Sink;)V
    .registers 2

    invoke-direct {p0, p1}, Lokin/ForwardingSink;-><init>(Lokin/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Lokhttp4/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-super {p0}, Lokin/ForwardingSink;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp4/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lokhttp4/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_10
    return-void
.end method

.method public flush()V
    .registers 3

    iget-boolean v0, p0, Lokhttp4/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-super {p0}, Lokin/ForwardingSink;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp4/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lokhttp4/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_10
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public write(Lokin/Buffer;J)V
    .registers 5

    iget-boolean v0, p0, Lokhttp4/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2, p3}, Lokin/Buffer;->skip(J)V

    return-void

    :cond_8
    :try_start_8
    invoke-super {p0, p1, p2, p3}, Lokin/ForwardingSink;->write(Lokin/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lokhttp4/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, p1}, Lokhttp4/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_13
    return-void
.end method
