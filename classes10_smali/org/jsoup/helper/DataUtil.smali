.class public abstract Lorg/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final charsetPattern:Ljava/util/regex/Pattern;

.field static final defaultCharsetName:Ljava/lang/String;

.field private static final mimeBoundaryChars:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    return-void
.end method

.method private static detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;
    .registers 9

    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    :cond_12
    const/4 p0, 0x0

    aget-byte v0, v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v0, :cond_28

    aget-byte v7, v1, v6

    if-nez v7, :cond_28

    aget-byte v7, v1, v3

    if-ne v7, v4, :cond_28

    aget-byte v7, v1, v2

    if-eq v7, v5, :cond_36

    :cond_28
    if-ne v0, v5, :cond_3e

    aget-byte v7, v1, v6

    if-ne v7, v4, :cond_3e

    aget-byte v7, v1, v3

    if-nez v7, :cond_3e

    aget-byte v2, v1, v2

    if-nez v2, :cond_3e

    :cond_36
    new-instance v0, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v1, "UTF-32"

    invoke-direct {v0, v1, p0}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_3e
    if-ne v0, v4, :cond_44

    aget-byte v2, v1, v6

    if-eq v2, v5, :cond_4a

    :cond_44
    if-ne v0, v5, :cond_52

    aget-byte v2, v1, v6

    if-ne v2, v4, :cond_52

    :cond_4a
    new-instance v0, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v1, "UTF-16"

    invoke-direct {v0, v1, p0}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_52
    const/16 p0, -0x11

    if-ne v0, p0, :cond_6a

    aget-byte p0, v1, v6

    const/16 v0, -0x45

    if-ne p0, v0, :cond_6a

    aget-byte p0, v1, v3

    const/16 v0, -0x41

    if-ne p0, v0, :cond_6a

    new-instance p0, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v0, "UTF-8"

    invoke-direct {p0, v0, v6}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_6a
    const/4 p0, 0x0

    return-object p0
.end method

.method static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    sget-object v1, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "charset="

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    return-object v0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method static parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .registers 16

    const-string v0, "charset"

    if-nez p0, :cond_a

    new-instance p0, Lorg/jsoup/nodes/Document;

    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_a
    const v1, 0x8000

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object p0

    :try_start_12
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    const/16 v3, 0x13ff

    invoke-static {p0, v3}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    invoke-static {v3}, Lorg/jsoup/helper/DataUtil;->detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;

    move-result-object v5

    if-eqz v5, :cond_33

    invoke-static {v5}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$000(Lorg/jsoup/helper/DataUtil$BomCharset;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_15f

    :cond_33
    const/4 v7, 0x0

    if-nez p1, :cond_f7

    :try_start_36
    sget-object v8, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v8

    if-eqz v8, :cond_58

    new-instance v8, Ljava/io/CharArrayReader;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v9

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-direct {v8, v9, v10, v3}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-virtual {p3, v8, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    goto :goto_60

    :cond_58
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3
    :try_end_60
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_36 .. :try_end_60} :catch_f1
    .catchall {:try_start_36 .. :try_end_60} :catchall_15f

    :goto_60
    :try_start_60
    const-string v8, "meta[http-equiv=content-type], meta[charset]"

    invoke-virtual {v3, v8}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v7

    :cond_6b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jsoup/nodes/Element;

    const-string v11, "http-equiv"

    invoke-virtual {v10, v11}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_89

    const-string v9, "content"

    invoke-virtual {v10, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_89
    if-nez v9, :cond_95

    invoke-virtual {v10, v0}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_95

    invoke-virtual {v10, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_95
    if-eqz v9, :cond_6b

    :cond_97
    if-nez v9, :cond_d1

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-lez v0, :cond_d1

    invoke-virtual {v3, v2}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v0

    instance-of v8, v0, Lorg/jsoup/nodes/XmlDeclaration;

    if-eqz v8, :cond_aa

    check-cast v0, Lorg/jsoup/nodes/XmlDeclaration;

    goto :goto_bc

    :cond_aa
    instance-of v8, v0, Lorg/jsoup/nodes/Comment;

    if-eqz v8, :cond_bb

    check-cast v0, Lorg/jsoup/nodes/Comment;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->isXmlDeclaration()Z

    move-result v8

    if-eqz v8, :cond_bb

    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object v0

    goto :goto_bc

    :cond_bb
    move-object v0, v7

    :goto_bc
    if-eqz v0, :cond_d1

    invoke-virtual {v0}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "xml"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d1

    const-string v8, "encoding"

    invoke-virtual {v0, v8}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_d1
    invoke-static {v9}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ec

    sget-object v8, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ec

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\"\']"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_fc

    :cond_ec
    if-nez v4, :cond_ef

    goto :goto_fc

    :cond_ef
    move-object v7, v3

    goto :goto_fc

    :catch_f1
    move-exception p1

    invoke-virtual {p1}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_f7
    const-string v0, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_fc
    if-nez v7, :cond_15b

    if-nez p1, :cond_102

    sget-object p1, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    :cond_102
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_110
    .catchall {:try_start_60 .. :try_end_110} :catchall_15f

    if-eqz v5, :cond_126

    :try_start_112
    invoke-static {v5}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$100(Lorg/jsoup/helper/DataUtil$BomCharset;)Z

    move-result v1

    if-eqz v1, :cond_126

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v7

    cmp-long v1, v7, v3

    if-nez v1, :cond_123

    const/4 v2, 0x1

    :cond_123
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->isTrue(Z)V
    :try_end_126
    .catchall {:try_start_112 .. :try_end_126} :catchall_14f

    :cond_126
    :try_start_126
    invoke-virtual {p3, v0, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v7
    :try_end_12a
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_126 .. :try_end_12a} :catch_151
    .catchall {:try_start_126 .. :try_end_12a} :catchall_14f

    :try_start_12a
    sget-object p2, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_135

    sget-object p1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_139

    :cond_135
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_139
    invoke-virtual {v7}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result p1

    if-nez p1, :cond_14b

    sget-object p1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, p1}, Lorg/jsoup/nodes/Document;->charset(Ljava/nio/charset/Charset;)V
    :try_end_14b
    .catchall {:try_start_12a .. :try_end_14b} :catchall_14f

    :cond_14b
    :try_start_14b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_14e
    .catchall {:try_start_14b .. :try_end_14e} :catchall_15f

    goto :goto_15b

    :catchall_14f
    move-exception p1

    goto :goto_157

    :catch_151
    move-exception p1

    :try_start_152
    invoke-virtual {p1}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_157
    .catchall {:try_start_152 .. :try_end_157} :catchall_14f

    :goto_157
    :try_start_157
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p1
    :try_end_15b
    .catchall {:try_start_157 .. :try_end_15b} :catchall_15f

    :cond_15b
    :goto_15b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v7

    :catchall_15f
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .registers 4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    const v0, 0x8000

    invoke-static {p0, v0, p1}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/internal/ConstrainableInputStream;->readToByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static validateCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2a

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\"\']"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_16
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-object p0

    :cond_1d
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1
    :try_end_27
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_16 .. :try_end_27} :catch_2a

    if-eqz v1, :cond_2a

    return-object p0

    :catch_2a
    :cond_2a
    :goto_2a
    return-object v0
.end method
