.class public Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;
.super Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProviderBase;
.source "UrlModuleSourceProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fallbackUris:Ljava/lang/Iterable;

.field private final privilegedUris:Ljava/lang/Iterable;

.field private final urlConnectionExpiryCalculator:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;

.field private final urlConnectionSecurityDomainProvider:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/commonjs/module/provider/DefaultUrlConnectionExpiryCalculator;

    invoke-direct {v0}, Lorg/mozilla/javascript/commonjs/module/provider/DefaultUrlConnectionExpiryCalculator;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;)V
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProviderBase;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->privilegedUris:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->fallbackUris:Ljava/lang/Iterable;

    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionExpiryCalculator:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;

    iput-object p4, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionSecurityDomainProvider:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;

    return-void
.end method

.method private close(Ljava/net/URLConnection;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->onFailedClosingUrlConnection(Ljava/net/URLConnection;Ljava/io/IOException;)V

    :goto_c
    return-void
.end method

.method private static getCharacterEncoding(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->getEncoding()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    invoke-virtual {v0}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->getContentType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    const-string/jumbo v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "8859_1"

    return-object p0

    :cond_22
    const-string/jumbo p0, "utf-8"

    return-object p0
.end method

.method private static getReader(Ljava/net/URLConnection;)Ljava/io/Reader;
    .registers 3

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->getCharacterEncoding(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSecurityDomain(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionSecurityDomainProvider:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;->getSecurityDomain(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method private loadFromPathList(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    invoke-virtual {v1, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p2}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object v1

    if-eqz v1, :cond_8

    return-object v1

    :cond_1f
    return-object v0
.end method


# virtual methods
.method protected entityNeedsRevalidation(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    if-eqz v0, :cond_f

    check-cast p1, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    invoke-virtual {p1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->entityNeedsRevalidation()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method protected loadFromActualUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .registers 16

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    if-nez p2, :cond_7

    move-object v2, v1

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    :goto_b
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->openUrlConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    instance-of v2, p3, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    if-eqz v2, :cond_27

    check-cast p3, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->appliesTo(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_28

    :cond_27
    move-object p3, v1

    :goto_28
    if-eqz p3, :cond_2d

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->applyConditionals(Ljava/net/URLConnection;)V

    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    if-eqz p3, :cond_40

    iget-object v2, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionExpiryCalculator:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;

    invoke-virtual {p3, v0, v7, v8, v2}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->updateValidator(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)Z

    move-result p3

    if-nez p3, :cond_40

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->close(Ljava/net/URLConnection;)V

    sget-object p1, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;->NOT_MODIFIED:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    return-object p1

    :cond_40
    new-instance p3, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    invoke-static {v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->getReader(Ljava/net/URLConnection;)Ljava/io/Reader;

    move-result-object v3

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->getSecurityDomain(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    iget-object v9, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionExpiryCalculator:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;

    move-object v4, v11

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v4 .. v9}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;-><init>(Ljava/net/URI;Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)V

    move-object v2, p3

    move-object v4, v10

    move-object v5, p1

    move-object v6, p2

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;-><init>(Ljava/io/Reader;Ljava/lang/Object;Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_5c} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_5c} :catch_62
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_5c} :catch_5d

    return-object p3

    :catch_5d
    move-exception p1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->close(Ljava/net/URLConnection;)V

    throw p1

    :catch_62
    move-exception p1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->close(Ljava/net/URLConnection;)V

    throw p1

    :catch_67
    return-object v1
.end method

.method protected loadFromFallbackLocations(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->fallbackUris:Ljava/lang/Iterable;

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromPathList(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object p1

    return-object p1
.end method

.method protected loadFromPrivilegedLocations(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->privilegedUris:Ljava/lang/Iterable;

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromPathList(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object p1

    return-object p1
.end method

.method protected loadFromUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .registers 7

    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromActualUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object v0

    if-eqz v0, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromActualUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object v0

    :goto_21
    return-object v0
.end method

.method protected onFailedClosingUrlConnection(Ljava/net/URLConnection;Ljava/io/IOException;)V
    .registers 3

    return-void
.end method

.method protected openUrlConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 2

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
