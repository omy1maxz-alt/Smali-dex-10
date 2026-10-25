.class Lcom/gold/extension/shared/patches/NetworkProxyPatch$1;
.super Lorg/chromium/net/Proxy$HttpConnectCallback;
.source "NetworkProxyPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/NetworkProxyPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lorg/chromium/net/Proxy$HttpConnectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeRequest(Lorg/chromium/net/Proxy$HttpConnectCallback$Request;)V
    .registers 2

    .line 55
    invoke-static {}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->-$$Nest$smgetProxyHeaders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/chromium/net/Proxy$HttpConnectCallback$Request;->proceed(Ljava/util/List;)V

    return-void
.end method

.method public onResponseReceived(Ljava/util/List;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)I"
        }
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method
