.class Ljj$/util/stream/Streams$1;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$a:Ljava/lang/Runnable;

.field final synthetic val$b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/Streams$1;->val$a:Ljava/lang/Runnable;

    iput-object p2, p0, Ljj$/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Ljj$/util/stream/Streams$1;->val$a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    nop

    iget-object v0, p0, Ljj$/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    iget-object v1, p0, Ljj$/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_1a

    :catchall_13
    move-exception v1

    :try_start_14
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    :goto_17
    goto :goto_1a

    :catchall_18
    move-exception v2

    goto :goto_17

    :goto_1a
    throw v0
.end method
