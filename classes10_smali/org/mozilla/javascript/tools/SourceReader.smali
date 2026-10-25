.class public Lorg/mozilla/javascript/tools/SourceReader;
.super Ljava/lang/Object;
.source "SourceReader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFileOrUrl(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;
    .registers 13

    invoke-static {p0}, Lorg/mozilla/javascript/tools/SourceReader;->toUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_1b

    :try_start_8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int p0, v4

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v1

    move-object v1, v4

    move-object v4, v3

    goto :goto_48

    :cond_1b
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_f7

    if-eqz p1, :cond_3b

    :try_start_25
    new-instance v1, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->getEncoding()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :catchall_37
    move-exception p0

    move-object v1, v3

    goto/16 :goto_f8

    :cond_3b
    move-object v4, v1

    :goto_3c
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result p0
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_37

    const/high16 v5, 0x100000

    if-le p0, v5, :cond_45

    const/4 p0, -0x1

    :cond_45
    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    :goto_48
    if-gtz p0, :cond_4c

    const/16 p0, 0x1000

    :cond_4c
    :try_start_4c
    invoke-static {v1, p0}, Lorg/mozilla/javascript/Kit;->readStream(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_f7

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_55
    if-nez p1, :cond_59

    goto/16 :goto_f6

    :cond_59
    const-string p1, "UTF-8"

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_db

    array-length v3, p0

    const/4 v6, -0x2

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-le v3, v8, :cond_79

    aget-byte v3, p0, v1

    if-ne v3, v2, :cond_79

    aget-byte v3, p0, v5

    if-ne v3, v6, :cond_79

    aget-byte v3, p0, v7

    if-nez v3, :cond_79

    aget-byte v3, p0, v8

    if-nez v3, :cond_79

    const-string p2, "UTF-32LE"

    goto/16 :goto_dc

    :cond_79
    array-length v3, p0

    if-le v3, v8, :cond_8f

    aget-byte v3, p0, v1

    if-nez v3, :cond_8f

    aget-byte v3, p0, v5

    if-nez v3, :cond_8f

    aget-byte v3, p0, v7

    if-ne v3, v6, :cond_8f

    aget-byte v3, p0, v8

    if-ne v3, v2, :cond_8f

    const-string p2, "UTF-32BE"

    goto :goto_dc

    :cond_8f
    array-length v3, p0

    if-le v3, v7, :cond_a6

    aget-byte v3, p0, v1

    const/16 v8, -0x11

    if-ne v3, v8, :cond_a6

    aget-byte v3, p0, v5

    const/16 v8, -0x45

    if-ne v3, v8, :cond_a6

    aget-byte v3, p0, v7

    const/16 v7, -0x41

    if-ne v3, v7, :cond_a6

    :goto_a4
    move-object p2, p1

    goto :goto_dc

    :cond_a6
    array-length v3, p0

    if-le v3, v5, :cond_b4

    aget-byte v3, p0, v1

    if-ne v3, v2, :cond_b4

    aget-byte v3, p0, v5

    if-ne v3, v6, :cond_b4

    const-string p2, "UTF-16LE"

    goto :goto_dc

    :cond_b4
    array-length v3, p0

    if-le v3, v5, :cond_c2

    aget-byte v3, p0, v1

    if-ne v3, v6, :cond_c2

    aget-byte v3, p0, v5

    if-ne v3, v2, :cond_c2

    const-string p2, "UTF-16BE"

    goto :goto_dc

    :cond_c2
    if-nez p2, :cond_dc

    if-nez v0, :cond_cd

    const-string p1, "file.encoding"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_dc

    :cond_cd
    if-eqz v4, :cond_d8

    const-string p2, "application/"

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d8

    goto :goto_a4

    :cond_d8
    const-string p2, "US-ASCII"

    goto :goto_dc

    :cond_db
    move-object p2, v3

    :cond_dc
    :goto_dc
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_f5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const p2, 0xfeff

    if-ne p0, p2, :cond_f5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_f6

    :cond_f5
    move-object p0, p1

    :goto_f6
    return-object p0

    :catchall_f7
    move-exception p0

    :goto_f8
    if-eqz v1, :cond_fd

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_fd
    goto :goto_ff

    :goto_fe
    throw p0

    :goto_ff
    goto :goto_fe
.end method

.method public static toUrl(Ljava/lang/String;)Ljava/net/URL;
    .registers 3

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    :try_start_9
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method
