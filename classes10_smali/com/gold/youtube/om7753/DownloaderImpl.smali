.class public final Lcom/gold/youtube/om7753/DownloaderImpl;
.super Lcom/gold/youtube/om7753/extractor/downloader/Downloader;
.source "DownloaderImpl.java"


# static fields
.field private static instance:Lcom/gold/youtube/om7753/DownloaderImpl;


# instance fields
.field private final client:Lokhttp4/OkHttpClient;

.field private final mCookies:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lokhttp4/OkHttpClient$Builder;)V
    .registers 5

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_c

    invoke-static {p1}, Lcom/gold/youtube/om7753/DownloaderImpl;->enableModernTLS(Lokhttp4/OkHttpClient$Builder;)V

    :cond_c
    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp4/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp4/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/OkHttpClient$Builder;->build()Lokhttp4/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/DownloaderImpl;->client:Lokhttp4/OkHttpClient;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/DownloaderImpl;->mCookies:Ljava/util/Map;

    return-void
.end method

.method private static enableModernTLS(Lokhttp4/OkHttpClient$Builder;)V
    .registers 6

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_61

    const/4 v1, 0x0

    aget-object v3, v0, v1

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_61

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-static {}, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->getInstance()Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lokhttp4/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp4/OkHttpClient$Builder;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lokhttp4/ConnectionSpec;->MODERN_TLS:Lokhttp4/ConnectionSpec;

    invoke-virtual {v3}, Lokhttp4/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lokhttp4/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp4/CipherSuite;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lokhttp4/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp4/CipherSuite;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lokhttp4/ConnectionSpec$Builder;

    invoke-direct {v4, v3}, Lokhttp4/ConnectionSpec$Builder;-><init>(Lokhttp4/ConnectionSpec;)V

    new-array v3, v1, [Lokhttp4/CipherSuite;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp4/CipherSuite;

    invoke-virtual {v4, v0}, Lokhttp4/ConnectionSpec$Builder;->cipherSuites([Lokhttp4/CipherSuite;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/ConnectionSpec$Builder;->build()Lokhttp4/ConnectionSpec;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Lokhttp4/ConnectionSpec;

    aput-object v0, v3, v1

    sget-object v0, Lokhttp4/ConnectionSpec;->CLEARTEXT:Lokhttp4/ConnectionSpec;

    aput-object v0, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp4/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp4/OkHttpClient$Builder;

    goto :goto_88

    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected default trust managers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7c
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_7c} :catch_80
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7c} :catch_7e
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception p0

    goto :goto_81

    :catch_7e
    move-exception p0

    goto :goto_81

    :catch_80
    move-exception p0

    :goto_81
    sget-boolean v0, Lcom/gold/youtube/om7753/App;->debug:Z

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    :cond_88
    :goto_88
    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/DownloaderImpl;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/DownloaderImpl;->instance:Lcom/gold/youtube/om7753/DownloaderImpl;

    return-object v0
.end method

.method public static init(Lokhttp4/OkHttpClient$Builder;)Lcom/gold/youtube/om7753/DownloaderImpl;
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/DownloaderImpl;

    if-eqz p0, :cond_5

    goto :goto_a

    :cond_5
    new-instance p0, Lokhttp4/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp4/OkHttpClient$Builder;-><init>()V

    :goto_a
    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/DownloaderImpl;-><init>(Lokhttp4/OkHttpClient$Builder;)V

    sput-object v0, Lcom/gold/youtube/om7753/DownloaderImpl;->instance:Lcom/gold/youtube/om7753/DownloaderImpl;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/gold/youtube/om7753/extractor/downloader/Request;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 12

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request;->httpMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request;->headers()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request;->dataToSend()[B

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    invoke-static {v3, p1}, Lokhttp4/RequestBody;->create(Lokhttp4/MediaType;[B)Lokhttp4/RequestBody;

    move-result-object p1

    goto :goto_19

    :cond_18
    move-object p1, v3

    :goto_19
    new-instance v4, Lokhttp4/Request$Builder;

    invoke-direct {v4}, Lokhttp4/Request$Builder;-><init>()V

    invoke-virtual {v4, v0, p1}, Lokhttp4/Request$Builder;->method(Ljava/lang/String;Lokhttp4/RequestBody;)Lokhttp4/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lokhttp4/Request$Builder;->url(Ljava/lang/String;)Lokhttp4/Request$Builder;

    move-result-object p1

    const-string v0, "User-Agent"

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0"

    invoke-virtual {p1, v0, v4}, Lokhttp4/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/DownloaderImpl;->getCookies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    const-string v4, "Cookie"

    invoke-virtual {p1, v4, v0}, Lokhttp4/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_3d
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7b

    invoke-virtual {p1, v4}, Lokhttp4/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp4/Request$Builder;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lokhttp4/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    goto :goto_6b

    :cond_7b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_45

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    goto :goto_45

    :cond_8c
    iget-object v0, p0, Lcom/gold/youtube/om7753/DownloaderImpl;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {p1}, Lokhttp4/Request$Builder;->build()Lokhttp4/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp4/OkHttpClient;->newCall(Lokhttp4/Request;)Lokhttp4/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp4/Call;->execute()Lokhttp4/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Response;->code()I

    move-result v0

    const/16 v2, 0x1ad

    if-eq v0, v2, :cond_d0

    invoke-virtual {p1}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_ac

    invoke-virtual {v0}, Lokhttp4/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    :cond_ac
    move-object v8, v3

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/gold/youtube/om7753/extractor/downloader/Response;

    invoke-virtual {p1}, Lokhttp4/Response;->code()I

    move-result v5

    invoke-virtual {p1}, Lokhttp4/Response;->message()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v7

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/gold/youtube/om7753/extractor/downloader/Response;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_d0
    invoke-virtual {p1}, Lokhttp4/Response;->close()V

    new-instance p1, Lcom/gold/youtube/om7753/extractor/exceptions/ReCaptchaException;

    const-string v0, "reCaptcha Challenge requested"

    invoke-direct {p1, v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ReCaptchaException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    :goto_db
    throw p1

    :goto_dc
    goto :goto_db
.end method

.method public getContentLength(Ljava/lang/String;)J
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->head(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object p1

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_e} :catch_f

    return-wide v0

    :catch_f
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_16
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid content length"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/DownloaderImpl;->mCookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCookies(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "youtube.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string/jumbo p1, "youtube_restricted_mode_key"

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/DownloaderImpl;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    const-string p1, "recaptcha_cookies"

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/DownloaderImpl;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    invoke-static {v0}, Lcom/gold/youtube/om7753/util/CookieUtils;->concatCookies(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeCookie(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/DownloaderImpl;->mCookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/DownloaderImpl;->mCookies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateYoutubeRestrictedModeCookies(Landroid/content/Context;)V
    .registers 4

    const-string v0, "youtube_restricted_mode_enabled"

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/DownloaderImpl;->updateYoutubeRestrictedModeCookies(Z)V

    return-void
.end method

.method public updateYoutubeRestrictedModeCookies(Z)V
    .registers 3

    const-string/jumbo v0, "youtube_restricted_mode_key"

    if-eqz p1, :cond_b

    const-string p1, "PREF=f2=8000000"

    invoke-virtual {p0, v0, p1}, Lcom/gold/youtube/om7753/DownloaderImpl;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_b
    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/DownloaderImpl;->removeCookie(Ljava/lang/String;)V

    :goto_e
    invoke-static {}, Lcom/gold/youtube/om7753/util/InfoCache;->getInstance()Lcom/gold/youtube/om7753/util/InfoCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/util/InfoCache;->clearCache()V

    return-void
.end method
