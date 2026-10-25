.class final Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;
.super Lcom/android/tools/r8/RecordTag;
.source "NetworkProxyPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/NetworkProxyPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyConfig"
.end annotation


# instance fields
.field private final allowDirectFallback:Z

.field private final host:Ljava/lang/String;

.field private final httpsProxy:Z

.field private final port:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;

    if-eqz v0, :cond_24

    check-cast p1, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;

    iget-boolean v0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->httpsProxy:Z

    iget-boolean v1, p1, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->httpsProxy:Z

    if-ne v0, v1, :cond_24

    iget-boolean v0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->allowDirectFallback:Z

    iget-boolean v1, p1, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->allowDirectFallback:Z

    if-ne v0, v1, :cond_24

    iget v0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->port:I

    iget v1, p1, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->port:I

    if-ne v0, v1, :cond_24

    iget-object p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->host:Ljava/lang/String;

    iget-object p1, p1, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->host:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->host:Ljava/lang/String;

    iget v1, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->httpsProxy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->allowDirectFallback:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object p0, v3, v0

    return-object v3
.end method

.method public static bridge synthetic -$$Nest$fgetallowDirectFallback(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->allowDirectFallback:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgethost(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->host:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgethttpsProxy(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->httpsProxy:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetport(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->port:I

    return p0
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "port",
            "httpsProxy",
            "allowDirectFallback"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->host:Ljava/lang/String;

    iput p2, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->port:I

    iput-boolean p3, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->httpsProxy:Z

    iput-boolean p4, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->allowDirectFallback:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZZLcom/gold/extension/shared/patches/NetworkProxyPatch-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public allowDirectFallback()Z
    .registers 1

    .line 200
    iget-boolean p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->allowDirectFallback:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 4

    .line 200
    iget-boolean v0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->httpsProxy:Z

    iget-boolean v1, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->allowDirectFallback:Z

    iget v2, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->port:I

    iget-object p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->host:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig$$ExternalSyntheticRecord0;->m(ZZILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public host()Ljava/lang/String;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->host:Ljava/lang/String;

    return-object p0
.end method

.method public httpsProxy()Z
    .registers 1

    .line 200
    iget-boolean p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->httpsProxy:Z

    return p0
.end method

.method public isValid()Z
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->port:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_13

    const v1, 0xffff

    if-gt p0, v1, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public port()I
    .registers 1

    .line 200
    iget p0, p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->port:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 200
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;

    const-string v1, "host;port;httpsProxy;allowDirectFallback"

    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/StringRef$StringKeyLookup$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
