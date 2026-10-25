.class Lokin/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokin/Sink;


# instance fields
.field final synthetic this$0:Lokin/AsyncTimeout;

.field final synthetic val$sink:Lokin/Sink;


# direct methods
.method constructor <init>(Lokin/AsyncTimeout;Lokin/Sink;)V
    .registers 3

    iput-object p1, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    iput-object p2, p0, Lokin/AsyncTimeout$1;->val$sink:Lokin/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v0}, Lokin/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v0, p0, Lokin/AsyncTimeout$1;->val$sink:Lokin/Sink;

    invoke-interface {v0}, Lokin/Sink;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    iget-object v1, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokin/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokin/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokin/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .registers 4

    iget-object v0, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v0}, Lokin/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v0, p0, Lokin/AsyncTimeout$1;->val$sink:Lokin/Sink;

    invoke-interface {v0}, Lokin/Sink;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    iget-object v1, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokin/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokin/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokin/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokin/AsyncTimeout$1;->val$sink:Lokin/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokin/Buffer;J)V
    .registers 10

    iget-wide v0, p1, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4a

    iget-object v2, p1, Lokin/Buffer;->head:Lokin/Segment;

    :goto_10
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_27

    iget v3, v2, Lokin/Segment;->limit:I

    iget v4, v2, Lokin/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_24

    move-wide v0, p2

    goto :goto_27

    :cond_24
    iget-object v2, v2, Lokin/Segment;->next:Lokin/Segment;

    goto :goto_10

    :cond_27
    :goto_27
    const/4 v2, 0x0

    iget-object v3, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v3}, Lokin/AsyncTimeout;->enter()V

    :try_start_2d
    iget-object v3, p0, Lokin/AsyncTimeout$1;->val$sink:Lokin/Sink;

    invoke-interface {v3, p1, v0, v1}, Lokin/Sink;->write(Lokin/Buffer;J)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_3c
    .catchall {:try_start_2d .. :try_end_32} :catchall_3a

    sub-long/2addr p2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokin/AsyncTimeout;->exit(Z)V

    goto :goto_8

    :catchall_3a
    move-exception p1

    goto :goto_44

    :catch_3c
    move-exception p1

    :try_start_3d
    iget-object p2, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {p2, p1}, Lokin/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    :goto_44
    iget-object p2, p0, Lokin/AsyncTimeout$1;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {p2, v2}, Lokin/AsyncTimeout;->exit(Z)V

    throw p1

    :cond_4a
    return-void
.end method
