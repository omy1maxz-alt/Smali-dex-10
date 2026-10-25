.class public abstract synthetic Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(ZZILjava/lang/Object;)I
    .registers 4

    .line 0
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
