.class public Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;
.super Ljava/lang/Object;
.source "SrtFromTtmlWriter.java"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private frameIndex:I

.field private final ignoreEmptyFrames:Z

.field private final out:Lcom/gold/youtube/om7753/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->frameIndex:I

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->out:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iput-boolean p2, p0, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    return-void
.end method

.method private static getTimestamp(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    const/16 v0, 0x2c

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 6

    iget v0, p0, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->frameIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->frameIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    const-string p1, " --> "

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->out:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([B)V

    return-void
.end method


# virtual methods
.method public build(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 8

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->available()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([B)I

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    const-string v1, "UTF-8"

    const-string v2, ""

    invoke-static {p1, v1, v2, v0}, Lorg/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "body > div > p"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_30

    return-void

    :cond_30
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4c
    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Node;

    instance-of v5, v4, Lorg/jsoup/nodes/TextNode;

    if-eqz v5, :cond_66

    check-cast v4, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v4}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_66
    instance-of v5, v4, Lorg/jsoup/nodes/Element;

    if-eqz v5, :cond_4c

    check-cast v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "br"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_7e
    iget-boolean v3, p0, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    if-eqz v3, :cond_89

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v3, v2, :cond_89

    goto :goto_34

    :cond_89
    const-string v3, "begin"

    invoke-static {v1, v3}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->getTimestamp(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "end"

    invoke-static {v1, v4}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->getTimestamp(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1, v0}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->writeFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_34

    :cond_99
    return-void
.end method
