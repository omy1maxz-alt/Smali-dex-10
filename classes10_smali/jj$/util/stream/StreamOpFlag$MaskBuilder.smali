.class Ljj$/util/stream/StreamOpFlag$MaskBuilder;
.super Ljava/lang/Object;
.source "StreamOpFlag.java"


# instance fields
.field final map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method build()Ljava/util/Map;
    .registers 8

    invoke-static {}, Ljj$/util/stream/StreamOpFlag$Type;->values()[Ljj$/util/stream/StreamOpFlag$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    iget-object v5, p0, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v4, v6}, Ljj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_17
    iget-object v0, p0, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    return-object v0
.end method

.method clear(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;
    .registers 3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljj$/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method mask(Ljj$/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljj$/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method setAndClear(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;
    .registers 3

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljj$/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method
