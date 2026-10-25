.class public abstract Lorg/jsoup/Jsoup;
.super Ljava/lang/Object;
.source "Jsoup.java"


# direct methods
.method public static parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method
