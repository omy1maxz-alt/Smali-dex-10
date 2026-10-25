.class public final synthetic Lcom/gold/extension/youtube/patches/FixContentProviderPatch$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/FixContentProviderPatch;->$r8$lambda$BkOpKoThueEIUHD1u8xt6Gc9bSs(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
