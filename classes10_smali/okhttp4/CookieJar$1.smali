.class Lokhttp4/CookieJar$1;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Lokhttp4/CookieJar;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadForRequest(Lokhttp4/HttpUrl;)Ljava/util/List;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public saveFromResponse(Lokhttp4/HttpUrl;Ljava/util/List;)V
    .registers 3

    return-void
.end method
