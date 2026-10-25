.class Lcom/gold/extension/shared/Utils$1;
.super Ljava/util/LinkedHashMap;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/Utils;->createSizeRestrictedMap(I)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$maxSize:I


# direct methods
.method public constructor <init>(IFI)V
    .registers 4

    .line 1106
    iput p3, p0, Lcom/gold/extension/shared/Utils$1;->val$maxSize:I

    invoke-direct {p0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 2

    .line 1109
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget p0, p0, Lcom/gold/extension/shared/Utils$1;->val$maxSize:I

    if-le p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
