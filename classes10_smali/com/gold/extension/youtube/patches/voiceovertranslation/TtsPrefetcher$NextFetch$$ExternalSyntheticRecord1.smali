.class public abstract synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch$$ExternalSyntheticRecord1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(IILjava/lang/Object;)I
    .registers 3

    .line 0
    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
