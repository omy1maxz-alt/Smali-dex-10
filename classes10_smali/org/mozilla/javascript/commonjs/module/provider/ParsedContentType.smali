.class public final Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;
.super Ljava/lang/Object;
.source "ParsedContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_5e

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_1b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "charset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5a

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x22

    if-ne v3, v5, :cond_4f

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4f
    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5a
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_5f

    :cond_5e
    move-object p1, v0

    :goto_5f
    iput-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->contentType:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->encoding:Ljava/lang/String;

    return-object v0
.end method
