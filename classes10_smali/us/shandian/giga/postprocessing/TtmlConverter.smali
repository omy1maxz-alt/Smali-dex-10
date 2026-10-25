.class Lus/shandian/giga/postprocessing/TtmlConverter;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "TtmlConverter.java"


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "ttml"

    invoke-direct {p0, v0, v1, v2}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lcom/gold/youtube/om7753/streams/io/SharpStream;[Lcom/gold/youtube/om7753/streams/io/SharpStream;)I
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing;->getArgumentAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "true"

    invoke-virtual {p0, v2, v3}, Lus/shandian/giga/postprocessing/Postprocessing;->getArgumentAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v1, :cond_4f

    const-string/jumbo v5, "ttml"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_4f

    :cond_1f
    const-string v2, "srt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_2b
    aget-object v2, p2, v0

    invoke-virtual {v2, v1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([B)I

    move-result v2

    if-lez v2, :cond_37

    invoke-virtual {p1, v1, v0, v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    goto :goto_2b

    :cond_37
    return v4

    :cond_38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert this subtitle, unimplemented format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    :goto_4f
    new-instance v1, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;

    invoke-direct {v1, p1, v3}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;Z)V

    :try_start_54
    aget-object p1, p2, v0

    invoke-virtual {v1, p1}, Lcom/gold/youtube/om7753/streams/SrtFromTtmlWriter;->build(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_5a

    return v4

    :catch_5a
    move-exception p1

    const-string p2, "TtmlConverter"

    const-string v0, "subtitle parse failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_67

    goto :goto_69

    :cond_67
    const/16 v2, 0x8

    :goto_69
    return v2
.end method
