.class final Ljj$/nio/file/FileChannelLinesSpliterator;
.super Ljava/lang/Object;
.source "FileChannelLinesSpliterator.java"

# interfaces
.implements Ljj$/util/Spliterator;


# static fields
.field static final SUPPORTED_CHARSET_NAMES:Ljava/util/Set;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private final cs:Ljava/nio/charset/Charset;

.field private final fc:Ljava/nio/channels/FileChannel;

.field private final fence:I

.field private index:I

.field private reader:Ljava/io/BufferedReader;


# direct methods
.method static bridge synthetic -$$Nest$fgetfc(Ljj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;
    .registers 1

    iget-object p0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfence(Ljj$/nio/file/FileChannelLinesSpliterator;)I
    .registers 1

    iget p0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fence:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetindex(Ljj$/nio/file/FileChannelLinesSpliterator;)I
    .registers 1

    iget p0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->index:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputindex(Ljj$/nio/file/FileChannelLinesSpliterator;I)V
    .registers 2

    iput p1, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->index:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    sget-object v0, Ljj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    const-string v1, "UTF-8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    const-string v1, "ISO-8859-1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    const-string v1, "US-ASCII"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    iput-object p2, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->cs:Ljava/nio/charset/Charset;

    iput p3, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->index:I

    iput p4, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fence:I

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;IILjava/nio/ByteBuffer;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    iput-object p5, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->buffer:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->cs:Ljava/nio/charset/Charset;

    iput p3, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->index:I

    iput p4, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fence:I

    return-void
.end method

.method private getBufferedReader()Ljava/io/BufferedReader;
    .registers 5

    new-instance v0, Ljj$/nio/file/FileChannelLinesSpliterator$1;

    invoke-direct {v0, p0}, Ljj$/nio/file/FileChannelLinesSpliterator$1;-><init>(Ljj$/nio/file/FileChannelLinesSpliterator;)V

    new-instance v1, Ljava/io/BufferedReader;

    iget-object v2, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v1
.end method

.method private getMappedByteBuffer()Ljava/nio/ByteBuffer;
    .registers 7

    :try_start_0
    iget-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget v2, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fence:I

    int-to-long v4, v2

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private readLine()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->reader:Ljava/io/BufferedReader;

    if-nez v0, :cond_d

    invoke-direct {p0}, Ljj$/nio/file/FileChannelLinesSpliterator;->getBufferedReader()Ljava/io/BufferedReader;

    move-result-object v0

    iput-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->reader:Ljava/io/BufferedReader;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->buffer:Ljava/nio/ByteBuffer;

    :cond_d
    :try_start_d
    iget-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    const/16 v0, 0x110

    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fence:I

    iget v1, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4

    nop

    :goto_1
    invoke-direct {p0}, Ljj$/nio/file/FileChannelLinesSpliterator;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_c

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_c
    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getComparator(Ljj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4

    invoke-direct {p0}, Ljj$/nio/file/FileChannelLinesSpliterator;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 12

    iget-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->reader:Ljava/io/BufferedReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Ljj$/nio/file/FileChannelLinesSpliterator;->getMappedByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, v0

    move-object v8, v2

    goto :goto_15

    :cond_14
    move-object v8, v2

    :goto_15
    iget v0, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fence:I

    iget v6, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->index:I

    add-int v2, v6, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2a

    add-int/lit8 v2, v2, 0x1

    move v7, v2

    move v2, v3

    goto :goto_76

    :cond_2a
    const/16 v5, 0xd

    if-ne v3, v5, :cond_40

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_3d

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-ne v5, v4, :cond_3d

    add-int/lit8 v2, v2, 0x1

    move v7, v2

    move v2, v3

    goto :goto_76

    :cond_3d
    move v7, v2

    move v2, v3

    goto :goto_76

    :cond_40
    add-int/lit8 v7, v2, -0x1

    add-int/lit8 v9, v2, 0x1

    const/4 v2, 0x0

    :goto_45
    if-le v7, v6, :cond_3d

    if-ge v9, v0, :cond_3d

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-eq v3, v4, :cond_72

    if-ne v3, v5, :cond_54

    goto :goto_72

    :cond_54
    add-int/lit8 v7, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-eq v3, v4, :cond_62

    if-ne v3, v5, :cond_5f

    goto :goto_62

    :cond_5f
    move v9, v7

    move v7, v10

    goto :goto_45

    :cond_62
    :goto_62
    move v2, v7

    if-ne v3, v5, :cond_3d

    if-ge v2, v0, :cond_3d

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-ne v5, v4, :cond_3d

    add-int/lit8 v2, v2, 0x1

    move v7, v2

    move v2, v3

    goto :goto_76

    :cond_72
    :goto_72
    add-int/lit8 v2, v10, 0x2

    move v7, v2

    move v2, v3

    :goto_76
    if-le v7, v6, :cond_87

    if-ge v7, v0, :cond_87

    new-instance v3, Ljj$/nio/file/FileChannelLinesSpliterator;

    iget-object v4, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    iget-object v5, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->cs:Ljava/nio/charset/Charset;

    iput v7, p0, Ljj$/nio/file/FileChannelLinesSpliterator;->index:I

    invoke-direct/range {v3 .. v8}, Ljj$/nio/file/FileChannelLinesSpliterator;-><init>(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;IILjava/nio/ByteBuffer;)V

    move-object v1, v3

    goto :goto_88

    :cond_87
    nop

    :goto_88
    return-object v1
.end method
