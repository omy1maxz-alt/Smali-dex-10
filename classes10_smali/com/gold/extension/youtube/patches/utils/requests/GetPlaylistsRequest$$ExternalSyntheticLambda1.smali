.class public final synthetic Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->$r8$lambda$zcL4ggm9bUhljfquVQK_umunTp0(Ljava/lang/String;Ljava/util/Map;)[Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
