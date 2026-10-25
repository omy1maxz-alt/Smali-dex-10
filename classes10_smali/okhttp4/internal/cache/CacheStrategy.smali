.class public final Lokhttp4/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field public final cacheResponse:Lokhttp4/Response;

.field public final networkRequest:Lokhttp4/Request;


# direct methods
.method constructor <init>(Lokhttp4/Request;Lokhttp4/Response;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/cache/CacheStrategy;->networkRequest:Lokhttp4/Request;

    iput-object p2, p0, Lokhttp4/internal/cache/CacheStrategy;->cacheResponse:Lokhttp4/Response;

    return-void
.end method

.method public static isCacheable(Lokhttp4/Response;Lokhttp4/Request;)Z
    .registers 5

    invoke-virtual {p0}, Lokhttp4/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_5a

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_5a

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x133

    if-eq v0, v1, :cond_31

    const/16 v1, 0x134

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x194

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x195

    if-eq v0, v1, :cond_5a

    packed-switch v0, :pswitch_data_70

    goto :goto_59

    :cond_31
    :pswitch_31  #0x12e
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lokhttp4/Response;->cacheControl()Lokhttp4/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5a

    invoke-virtual {p0}, Lokhttp4/Response;->cacheControl()Lokhttp4/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lokhttp4/Response;->cacheControl()Lokhttp4/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_5a

    :cond_59
    :goto_59
    return v2

    :cond_5a
    :goto_5a
    :pswitch_5a  #0x12c, 0x12d
    invoke-virtual {p0}, Lokhttp4/Response;->cacheControl()Lokhttp4/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp4/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_6f

    invoke-virtual {p1}, Lokhttp4/Request;->cacheControl()Lokhttp4/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp4/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_6f

    const/4 v2, 0x1

    :cond_6f
    return v2

    :pswitch_data_70
    .packed-switch 0x12c
        :pswitch_5a  #0000012c
        :pswitch_5a  #0000012d
        :pswitch_31  #0000012e
    .end packed-switch
.end method
