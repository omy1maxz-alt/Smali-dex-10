.class Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;
.super Ljava/lang/Object;
.source "UrlModuleSourceProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final entityTags:Ljava/lang/String;

.field private expiry:J

.field private final lastModified:J

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->uri:Ljava/net/URI;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->lastModified:J

    invoke-static {p2}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->getEntityTags(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->entityTags:Ljava/lang/String;

    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->calculateExpiry(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->expiry:J

    return-void
.end method

.method private static calculateExpiry(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)J
    .registers 14

    const-string v0, "Pragma"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no-cache"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_11

    return-wide v2

    :cond_11
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_21

    return-wide v2

    :cond_21
    invoke-static {v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->getMaxAge(Ljava/lang/String;)I

    move-result v0

    if-eq v4, v0, :cond_4e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v6

    sub-long v6, v4, v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const/4 p3, 0x0

    const-string v3, "Age"

    invoke-virtual {p0, v3, p3}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long v6, p0

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    sub-long p1, v4, p1

    add-long/2addr v1, p1

    sub-long/2addr v4, v1

    int-to-long p0, v0

    mul-long p0, p0, v8

    add-long/2addr p0, v4

    return-wide p0

    :cond_4e
    const-string p1, "Expires"

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v4, p1, v0

    if-eqz v4, :cond_5b

    return-wide p1

    :cond_5b
    if-nez p3, :cond_5e

    goto :goto_62

    :cond_5e
    invoke-interface {p3, p0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;->calculateExpiry(Ljava/net/URLConnection;)J

    move-result-wide v2

    :goto_62
    return-wide v2
.end method

.method private static getEntityTags(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const-string v0, "ETag"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_41

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_41

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    :goto_41
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMaxAge(Ljava/lang/String;)I
    .registers 4

    const-string v0, "max-age"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    const/16 v2, 0x3d

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_15

    return v1

    :cond_15
    const/16 v2, 0x2c

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v1, :cond_24

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_24
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_28
    :try_start_28
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    return v1
.end method

.method private isResourceChanged(Ljava/net/URLConnection;)Z
    .registers 9

    instance-of v0, p1, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    :cond_13
    iget-wide v3, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->lastModified:J

    invoke-virtual {p1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method


# virtual methods
.method appliesTo(Ljava/net/URI;)Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->uri:Ljava/net/URI;

    invoke-virtual {v0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method applyConditionals(Ljava/net/URLConnection;)V
    .registers 7

    iget-wide v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->lastModified:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->entityTags:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->entityTags:Ljava/lang/String;

    const-string v1, "If-None-Match"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method entityNeedsRevalidation()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->expiry:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method updateValidator(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)Z
    .registers 6

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->isResourceChanged(Ljava/net/URLConnection;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->calculateExpiry(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->expiry:J

    :cond_c
    return v0
.end method
