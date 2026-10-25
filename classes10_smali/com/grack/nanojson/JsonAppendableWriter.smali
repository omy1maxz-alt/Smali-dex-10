.class public final Lcom/grack/nanojson/JsonAppendableWriter;
.super Lcom/grack/nanojson/JsonWriterBase;

# interfaces
.implements Lcom/grack/nanojson/JsonSink;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;-><init>(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public done()V
    .registers 3

    invoke-super {p0}, Lcom/grack/nanojson/JsonWriterBase;->doneInternal()V

    :try_start_3
    iget-object v0, p0, Lcom/grack/nanojson/JsonAppendableWriter;->appendable:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/grack/nanojson/JsonAppendableWriter;->appendable:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    goto :goto_1a

    :cond_11
    iget-object v0, p0, Lcom/grack/nanojson/JsonAppendableWriter;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/grack/nanojson/JsonAppendableWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    new-instance v1, Lcom/grack/nanojson/JsonWriterException;

    invoke-direct {v1, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
