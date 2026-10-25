.class Ljj$/nio/file/FileChannelLinesSpliterator$1;
.super Ljava/lang/Object;
.source "FileChannelLinesSpliterator.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# instance fields
.field final synthetic this$0:Ljj$/nio/file/FileChannelLinesSpliterator;


# direct methods
.method constructor <init>(Ljj$/nio/file/FileChannelLinesSpliterator;)V
    .registers 2

    iput-object p1, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v0}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfc(Ljj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public isOpen()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v0}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfc(Ljj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8

    iget-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v0}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfence(Ljj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v0

    iget-object v1, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v1}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetindex(Ljj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, -0x1

    if-nez v0, :cond_11

    return v1

    :cond_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v0, v2, :cond_3e

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    iget-object v3, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v3}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfc(Ljj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    iget-object v4, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v4}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetindex(Ljj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, p1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    goto :goto_4f

    :cond_3e
    iget-object v2, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v2}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfc(Ljj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-object v3, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v3}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetindex(Ljj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    :goto_4f
    if-ne v3, v1, :cond_5d

    iget-object v1, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    iget-object v2, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v2}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfence(Ljj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v2

    invoke-static {v1, v2}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fputindex(Ljj$/nio/file/FileChannelLinesSpliterator;I)V

    return v3

    :cond_5d
    iget-object v1, p0, Ljj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Ljj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v1}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetindex(Ljj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fputindex(Ljj$/nio/file/FileChannelLinesSpliterator;I)V

    return v3
.end method
