.class public final synthetic Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->$r8$lambda$XwsEE7zUg-9NJ9K15_LTzTnyoa0(Ljava/util/Map;Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;

    move-result-object p0

    return-object p0
.end method
