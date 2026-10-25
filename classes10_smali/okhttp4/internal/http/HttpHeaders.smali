.class public final Lokhttp4/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final QUOTED_STRING_DELIMITERS:Lokin/ByteString;

.field private static final TOKEN_DELIMITERS:Lokin/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\"\\"

    invoke-static {v0}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokin/ByteString;

    const-string v0, "\t ,="

    invoke-static {v0}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokin/ByteString;

    return-void
.end method

.method public static contentLength(Lokhttp4/Headers;)J
    .registers 3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp4/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokhttp4/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lokhttp4/Response;)J
    .registers 3

    invoke-virtual {p0}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object p0

    invoke-static {p0}, Lokhttp4/internal/http/HttpHeaders;->contentLength(Lokhttp4/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lokhttp4/Response;)Z
    .registers 9

    invoke-virtual {p0}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return v1

    :cond_12
    invoke-virtual {p0}, Lokhttp4/Response;->code()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    return v3

    :cond_28
    invoke-static {p0}, Lokhttp4/internal/http/HttpHeaders;->contentLength(Lokhttp4/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    return v1

    :cond_42
    :goto_42
    return v3
.end method

.method public static hasVaryAll(Lokhttp4/Headers;)Z
    .registers 2

    invoke-static {p0}, Lokhttp4/internal/http/HttpHeaders;->varyFields(Lokhttp4/Headers;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hasVaryAll(Lokhttp4/Response;)Z
    .registers 1

    invoke-virtual {p0}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object p0

    invoke-static {p0}, Lokhttp4/internal/http/HttpHeaders;->hasVaryAll(Lokhttp4/Headers;)Z

    move-result p0

    return p0
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .registers 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_18

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_f

    const p0, 0x7fffffff

    return p0

    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    long-to-int p1, p0

    :catch_18
    return p1
.end method

.method public static receiveHeaders(Lokhttp4/CookieJar;Lokhttp4/HttpUrl;Lokhttp4/Headers;)V
    .registers 4

    sget-object v0, Lokhttp4/CookieJar;->NO_COOKIES:Lokhttp4/CookieJar;

    if-ne p0, v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1, p2}, Lokhttp4/Cookie;->parseAll(Lokhttp4/HttpUrl;Lokhttp4/Headers;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-interface {p0, p1, p2}, Lokhttp4/CookieJar;->saveFromResponse(Lokhttp4/HttpUrl;Ljava/util/List;)V

    return-void
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_15
    :goto_15
    return p1
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_16
    :goto_16
    return p1
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_9

    :catch_9
    return-wide v0
.end method

.method public static varyFields(Lokhttp4/Headers;)Ljava/util/Set;
    .registers 9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp4/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_43

    invoke-virtual {p0, v3}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_40

    :cond_19
    invoke-virtual {p0, v3}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2a

    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_2a
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v5, :cond_40

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_43
    return-object v0
.end method

.method private static varyFields(Lokhttp4/Response;)Ljava/util/Set;
    .registers 1

    invoke-virtual {p0}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object p0

    invoke-static {p0}, Lokhttp4/internal/http/HttpHeaders;->varyFields(Lokhttp4/Headers;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varyHeaders(Lokhttp4/Headers;Lokhttp4/Headers;)Lokhttp4/Headers;
    .registers 7

    invoke-static {p1}, Lokhttp4/internal/http/HttpHeaders;->varyFields(Lokhttp4/Headers;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance p0, Lokhttp4/Headers$Builder;

    invoke-direct {p0}, Lokhttp4/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance v0, Lokhttp4/Headers$Builder;

    invoke-direct {v0}, Lokhttp4/Headers$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lokhttp4/Headers;->size()I

    move-result v2

    :goto_1e
    if-ge v1, v2, :cond_34

    invoke-virtual {p0, v1}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {p0, v1}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lokhttp4/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_34
    invoke-virtual {v0}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static varyHeaders(Lokhttp4/Response;)Lokhttp4/Headers;
    .registers 2

    invoke-virtual {p0}, Lokhttp4/Response;->networkResponse()Lokhttp4/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->headers()Lokhttp4/Headers;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object p0

    invoke-static {v0, p0}, Lokhttp4/internal/http/HttpHeaders;->varyHeaders(Lokhttp4/Headers;Lokhttp4/Headers;)Lokhttp4/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static varyMatches(Lokhttp4/Response;Lokhttp4/Headers;Lokhttp4/Request;)Z
    .registers 5

    invoke-static {p0}, Lokhttp4/internal/http/HttpHeaders;->varyFields(Lokhttp4/Response;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp4/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0}, Lokhttp4/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method
