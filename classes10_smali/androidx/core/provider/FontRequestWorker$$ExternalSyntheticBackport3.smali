.class public final synthetic Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport4;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
