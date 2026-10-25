.class public Lcom/gold/extension/shared/innertube/utils/AuthUtils;
.super Ljava/lang/Object;
.source "AuthUtils.java"


# static fields
.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field private static final PAGE_ID_HEADER:Ljava/lang/String; = "X-Goog-PageId"

.field private static final VISITOR_ID_HEADER:Ljava/lang/String; = "X-Goog-Visitor-Id"

.field private static authorization:Ljava/lang/String; = ""

.field private static incognitoStatus:Z = false

.field public static pageId:Ljava/lang/String; = ""

.field private static visitorId:Ljava/lang/String; = ""


# direct methods
.method public static synthetic $r8$lambda$148UgpKq3quyO4EM54amwzKb94Y()Ljava/lang/String;
    .registers 1

    .line 120
    const-string v0, "sha1 failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$4dqtB24OBrGrB4gUZb7Ct6tiJSA(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new PageID Header value loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rj7J6bor8plOiqPf73S7Fk7Ojvg()Ljava/lang/String;
    .registers 1

    .line 143
    const-string v0, "getAuthorizationHeader failed"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthorizationHeader(Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 126
    const-string v0, ""

    const-string v1, "SAPISIDHASH "

    const-string v2, " https://www.youtube.com"

    .line 128
    :try_start_6
    const-string v3, "SAPISID"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1e

    .line 131
    const-string v3, "__Secure-3PAPISID"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1e

    return-object v0

    :catch_1c
    move-exception p0

    goto :goto_55

    .line 137
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-static {p0}, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_54} :catch_1c

    return-object p0

    .line 143
    :goto_55
    new-instance v1, Lcom/gold/extension/shared/innertube/utils/AuthUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/shared/innertube/utils/AuthUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getRequestHeader()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v1, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->authorization:Ljava/lang/String;

    sget-object v3, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->visitorId:Ljava/lang/String;

    const-string v4, "X-Goog-PageId"

    sget-object v5, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->pageId:Ljava/lang/String;

    const-string v0, "Authorization"

    const-string v2, "X-Goog-Visitor-Id"

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/shared/innertube/utils/AuthUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static isNotLoggedIn()Z
    .registers 1

    .line 81
    sget-object v0, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->authorization:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->pageId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-boolean v0, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->incognitoStatus:Z

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public static parseCookieString(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v1, "([^=]+)=([^;]*);?\\s?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 100
    :goto_f
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    .line 101
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 102
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_23
    return-object v0
.end method

.method public static parseCookies(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string v1, "; "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 87
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_27

    aget-object v4, p0, v3

    .line 88
    const-string v5, "="

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 89
    array-length v5, v4

    if-ne v5, v6, :cond_24

    .line 90
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_27
    return-object v0
.end method

.method public static setIncognitoStatus(Z)V
    .registers 1

    .line 69
    sput-boolean p0, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->incognitoStatus:Z

    return-void
.end method

.method public static setPageId(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_14

    .line 58
    sget-object v0, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->pageId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 59
    sput-object p0, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->pageId:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/gold/extension/shared/innertube/utils/AuthUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/innertube/utils/AuthUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_14
    return-void
.end method

.method public static setRequestHeaders(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-static {p1}, Lorg/apache/commons/collections4/MapUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p0

    if-nez p0, :cond_26

    .line 43
    const-string p0, "Authorization"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 44
    const-string v0, "X-Goog-Visitor-Id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 47
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 48
    sput-object p0, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->authorization:Ljava/lang/String;

    .line 49
    sput-object p1, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->visitorId:Ljava/lang/String;

    :cond_26
    return-void
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 110
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 111
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    array-length v1, p0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_33

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :cond_2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 118
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p0

    .line 120
    new-instance v0, Lcom/gold/extension/shared/innertube/utils/AuthUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/shared/innertube/utils/AuthUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 122
    const-string p0, ""

    return-object p0
.end method
