.class Lokin/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokin/Source;


# instance fields
.field final synthetic this$0:Lokin/AsyncTimeout;

.field final synthetic val$source:Lokin/Source;


# direct methods
.method constructor <init>(Lokin/AsyncTimeout;Lokin/Source;)V
    .registers 3

    iput-object p1, p0, Lokin/AsyncTimeout$2;->this$0:Lokin/AsyncTimeout;

    iput-object p2, p0, Lokin/AsyncTimeout$2;->val$source:Lokin/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lokin/AsyncTimeout$2;->val$source:Lokin/Source;

    invoke-interface {v0}, Lokin/Source;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    const/4 v0, 0x1

    iget-object v1, p0, Lokin/AsyncTimeout$2;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokin/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    :try_start_f
    iget-object v1, p0, Lokin/AsyncTimeout$2;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokin/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    :goto_16
    iget-object v1, p0, Lokin/AsyncTimeout$2;->this$0:Lokin/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokin/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public read(Lokin/Buffer;J)J
    .registers 5

    iget-object v0, p0, Lokin/AsyncTimeout$2;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v0}, Lokin/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v0, p0, Lokin/AsyncTimeout$2;->val$source:Lokin/Source;

    invoke-interface {v0, p1, p2, p3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    const/4 p3, 0x1

    iget-object v0, p0, Lokin/AsyncTimeout$2;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {v0, p3}, Lokin/AsyncTimeout;->exit(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    :try_start_15
    iget-object p2, p0, Lokin/AsyncTimeout$2;->this$0:Lokin/AsyncTimeout;

    invoke-virtual {p2, p1}, Lokin/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    :goto_1c
    iget-object p2, p0, Lokin/AsyncTimeout$2;->this$0:Lokin/AsyncTimeout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lokin/AsyncTimeout;->exit(Z)V

    throw p1
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/AsyncTimeout$2;->this$0:Lokin/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokin/AsyncTimeout$2;->val$source:Lokin/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
