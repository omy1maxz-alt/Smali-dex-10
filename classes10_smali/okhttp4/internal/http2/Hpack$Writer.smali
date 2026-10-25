.class final Lokhttp4/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field dynamicTable:[Lokhttp4/internal/http2/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lokin/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z


# direct methods
.method constructor <init>(IZLokin/Buffer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp4/internal/http2/Header;

    iput-object v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerCount:I

    iput v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iput p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    iput p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    iput-boolean p2, p0, Lokhttp4/internal/http2/Hpack$Writer;->useCompression:Z

    iput-object p3, p0, Lokhttp4/internal/http2/Hpack$Writer;->out:Lokin/Buffer;

    return-void
.end method

.method constructor <init>(Lokin/Buffer;)V
    .registers 4

    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lokhttp4/internal/http2/Hpack$Writer;-><init>(IZLokin/Buffer;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .registers 3

    iget v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_10

    if-nez v0, :cond_c

    invoke-direct {p0}, Lokhttp4/internal/http2/Hpack$Writer;->clearDynamicTable()V

    goto :goto_10

    :cond_c
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lokhttp4/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    :cond_10
    :goto_10
    return-void
.end method

.method private clearDynamicTable()V
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerCount:I

    iput v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_47

    iget-object v1, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    if-lt v1, v2, :cond_29

    if-lez p1, :cond_29

    iget-object v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    aget-object v3, v2, v1

    iget v3, v3, Lokhttp4/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v3

    iget v3, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    aget-object v2, v2, v1

    iget v2, v2, Lokhttp4/internal/http2/Header;->hpackSize:I

    sub-int/2addr v3, v2

    iput v3, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_29
    iget-object p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerCount:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    iget v1, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    :cond_47
    return v0
.end method

.method private insertIntoDynamicTable(Lokhttp4/internal/http2/Header;)V
    .registers 8

    iget v0, p1, Lokhttp4/internal/http2/Header;->hpackSize:I

    iget v1, p0, Lokhttp4/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_a

    invoke-direct {p0}, Lokhttp4/internal/http2/Hpack$Writer;->clearDynamicTable()V

    return-void

    :cond_a
    iget v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lokhttp4/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    iget v1, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    array-length v3, v2

    if-le v1, v3, :cond_2e

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp4/internal/http2/Header;

    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    iput-object v1, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    :cond_2e
    iget v1, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    iget-object v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    aput-object p1, v2, v1

    iget p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerCount:I

    iget p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .registers 3

    iput p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v0, p1, :cond_d

    return-void

    :cond_d
    if-ge p1, v0, :cond_17

    iget v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    iput p1, p0, Lokhttp4/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-direct {p0}, Lokhttp4/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V

    return-void
.end method

.method writeByteString(Lokin/ByteString;)V
    .registers 5

    iget-boolean v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->useCompression:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_33

    invoke-static {}, Lokhttp4/internal/http2/Huffman;->get()Lokhttp4/internal/http2/Huffman;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp4/internal/http2/Huffman;->encodedLength(Lokin/ByteString;)I

    move-result v0

    invoke-virtual {p1}, Lokin/ByteString;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    new-instance v0, Lokin/Buffer;

    invoke-direct {v0}, Lokin/Buffer;-><init>()V

    invoke-static {}, Lokhttp4/internal/http2/Huffman;->get()Lokhttp4/internal/http2/Huffman;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lokhttp4/internal/http2/Huffman;->encode(Lokin/ByteString;Lokin/BufferedSink;)V

    invoke-virtual {v0}, Lokin/Buffer;->readByteString()Lokin/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokin/ByteString;->size()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Lokhttp4/internal/http2/Hpack$Writer;->writeInt(III)V

    iget-object v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->out:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->write(Lokin/ByteString;)Lokin/Buffer;

    goto :goto_40

    :cond_33
    invoke-virtual {p1}, Lokin/ByteString;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp4/internal/http2/Hpack$Writer;->writeInt(III)V

    iget-object v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->out:Lokin/Buffer;

    invoke-virtual {v0, p1}, Lokin/Buffer;->write(Lokin/ByteString;)Lokin/Buffer;

    :goto_40
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .registers 15

    iget-boolean v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v2, p0, Lokhttp4/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_12

    invoke-virtual {p0, v0, v4, v3}, Lokhttp4/internal/http2/Hpack$Writer;->writeInt(III)V

    :cond_12
    iput-boolean v1, p0, Lokhttp4/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const v0, 0x7fffffff

    iput v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v4, v3}, Lokhttp4/internal/http2/Hpack$Writer;->writeInt(III)V

    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v0, :cond_eb

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp4/internal/http2/Header;

    iget-object v4, v3, Lokhttp4/internal/http2/Header;->name:Lokin/ByteString;

    invoke-virtual {v4}, Lokin/ByteString;->toAsciiLowercase()Lokin/ByteString;

    move-result-object v4

    iget-object v5, v3, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    sget-object v6, Lokhttp4/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_6d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v8, :cond_6a

    const/16 v9, 0x8

    if-ge v6, v9, :cond_6a

    sget-object v9, Lokhttp4/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp4/internal/http2/Header;

    add-int/lit8 v10, v6, -0x1

    aget-object v10, v9, v10

    iget-object v10, v10, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    invoke-static {v10, v5}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    move v9, v6

    goto :goto_6f

    :cond_5a
    aget-object v9, v9, v6

    iget-object v9, v9, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    invoke-static {v9, v5}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_6f

    :cond_6a
    move v9, v6

    const/4 v6, -0x1

    goto :goto_6f

    :cond_6d
    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_6f
    if-ne v6, v7, :cond_a6

    iget v10, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v10, v8

    iget-object v8, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    array-length v8, v8

    :goto_77
    if-ge v10, v8, :cond_a6

    iget-object v11, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    aget-object v11, v11, v10

    iget-object v11, v11, Lokhttp4/internal/http2/Header;->name:Lokin/ByteString;

    invoke-static {v11, v4}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    iget-object v11, p0, Lokhttp4/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp4/internal/http2/Header;

    aget-object v11, v11, v10

    iget-object v11, v11, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    invoke-static {v11, v5}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_99

    iget v6, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int/2addr v10, v6

    sget-object v6, Lokhttp4/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp4/internal/http2/Header;

    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_a6

    :cond_99
    if-ne v9, v7, :cond_a3

    iget v9, p0, Lokhttp4/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v9, v10, v9

    sget-object v11, Lokhttp4/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp4/internal/http2/Header;

    array-length v11, v11

    add-int/2addr v9, v11

    :cond_a3
    add-int/lit8 v10, v10, 0x1

    goto :goto_77

    :cond_a6
    :goto_a6
    if-eq v6, v7, :cond_b0

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v6, v3, v4}, Lokhttp4/internal/http2/Hpack$Writer;->writeInt(III)V

    goto :goto_e7

    :cond_b0
    const/16 v6, 0x40

    if-ne v9, v7, :cond_c3

    iget-object v7, p0, Lokhttp4/internal/http2/Hpack$Writer;->out:Lokin/Buffer;

    invoke-virtual {v7, v6}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    invoke-virtual {p0, v4}, Lokhttp4/internal/http2/Hpack$Writer;->writeByteString(Lokin/ByteString;)V

    invoke-virtual {p0, v5}, Lokhttp4/internal/http2/Hpack$Writer;->writeByteString(Lokin/ByteString;)V

    invoke-direct {p0, v3}, Lokhttp4/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp4/internal/http2/Header;)V

    goto :goto_e7

    :cond_c3
    sget-object v7, Lokhttp4/internal/http2/Header;->PSEUDO_PREFIX:Lokin/ByteString;

    invoke-virtual {v4, v7}, Lokin/ByteString;->startsWith(Lokin/ByteString;)Z

    move-result v7

    if-eqz v7, :cond_dc

    sget-object v7, Lokhttp4/internal/http2/Header;->TARGET_AUTHORITY:Lokin/ByteString;

    invoke-virtual {v7, v4}, Lokin/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dc

    const/16 v3, 0xf

    invoke-virtual {p0, v9, v3, v1}, Lokhttp4/internal/http2/Hpack$Writer;->writeInt(III)V

    invoke-virtual {p0, v5}, Lokhttp4/internal/http2/Hpack$Writer;->writeByteString(Lokin/ByteString;)V

    goto :goto_e7

    :cond_dc
    const/16 v4, 0x3f

    invoke-virtual {p0, v9, v4, v6}, Lokhttp4/internal/http2/Hpack$Writer;->writeInt(III)V

    invoke-virtual {p0, v5}, Lokhttp4/internal/http2/Hpack$Writer;->writeByteString(Lokin/ByteString;)V

    invoke-direct {p0, v3}, Lokhttp4/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp4/internal/http2/Header;)V

    :goto_e7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    :cond_eb
    return-void
.end method

.method writeInt(III)V
    .registers 5

    if-ge p1, p2, :cond_9

    iget-object p2, p0, Lokhttp4/internal/http2/Hpack$Writer;->out:Lokin/Buffer;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    return-void

    :cond_9
    iget-object v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->out:Lokin/Buffer;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    sub-int/2addr p1, p2

    :goto_10
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1f

    and-int/lit8 p3, p1, 0x7f

    iget-object v0, p0, Lokhttp4/internal/http2/Hpack$Writer;->out:Lokin/Buffer;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_10

    :cond_1f
    iget-object p2, p0, Lokhttp4/internal/http2/Hpack$Writer;->out:Lokin/Buffer;

    invoke-virtual {p2, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    return-void
.end method
