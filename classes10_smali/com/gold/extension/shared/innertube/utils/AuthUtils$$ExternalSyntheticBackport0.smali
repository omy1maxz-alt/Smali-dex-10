.class public abstract synthetic Lcom/gold/extension/shared/innertube/utils/AuthUtils$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 7

    .line 0
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p0, p2, p3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p1, p4, p5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/util/Map$Entry;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    aput-object p0, p2, p3

    const/4 p0, 0x2

    aput-object p1, p2, p0

    invoke-static {p2}, Lcom/gold/extension/shared/innertube/utils/AuthUtils$$ExternalSyntheticBackport1;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
