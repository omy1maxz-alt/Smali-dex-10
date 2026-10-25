.class Lorg/mozilla/javascript/tools/shell/ConsoleWriter;
.super Ljava/io/OutputStream;
.source "ConsoleTextArea.java"


# instance fields
.field private buffer:Ljava/lang/StringBuffer;

.field private textArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->textArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->buffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private flushBuffer()V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v1, Lorg/mozilla/javascript/tools/shell/ConsoleWrite;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->textArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleWrite;-><init>(Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;Ljava/lang/String;)V

    invoke-static {v1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->flush()V

    return-void
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->flushBuffer()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->buffer:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    if-ne p1, v0, :cond_e

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->flushBuffer()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([CII)V
    .registers 6

    monitor-enter p0

    :goto_1
    if-ge p2, p3, :cond_19

    :try_start_3
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->buffer:Ljava/lang/StringBuffer;

    aget-char v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-char v0, p1, p2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->flushBuffer()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_19
    monitor-exit p0

    return-void
.end method
