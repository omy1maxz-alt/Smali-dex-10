.class public Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;
.super Ljava/lang/Object;
.source "PlaylistPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;
    }
.end annotation


# static fields
.field private static final checkFailedAuth:Ljava/lang/String;

.field private static final checkFailedGeneric:Ljava/lang/String;

.field private static final checkFailedPlaylistId:Ljava/lang/String;

.field private static final checkFailedQueue:Ljava/lang/String;

.field private static final checkFailedVideoId:Ljava/lang/String;

.field private static final fetchFailedAdd:Ljava/lang/String;

.field private static final fetchFailedCreate:Ljava/lang/String;

.field private static final fetchFailedRemove:Ljava/lang/String;

.field private static final fetchFailedSave:Ljava/lang/String;

.field private static final fetchSucceededAdd:Ljava/lang/String;

.field private static final fetchSucceededCreate:Ljava/lang/String;

.field private static final fetchSucceededRemove:Ljava/lang/String;

.field private static final fetchSucceededSave:Ljava/lang/String;

.field private static final lastVideoIds:Lorg/apache/commons/collections4/BidiMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "itself"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/BidiMap;"
        }
    .end annotation
.end field

.field private static volatile playlistId:Ljava/lang/String;

.field private static volatile syncStarted:Z

.field private static volatile videoId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4-c90ybIRnebgoQBOHju7IKDYI8(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video added, setVideoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4Y1Kqud_Xe7qJnNdbmeZe5AnUjc(Ljava/util/Map;)Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synced "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " items from queue playlist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EqraWg0QSCYEj3lubqDqGCMfFBo()Ljava/lang/Object;
    .registers 6

    .line 125
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    invoke-static {}, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->getRequestHeader()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest;->fetch(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 127
    sget-object v1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->lastVideoIds:Lorg/apache/commons/collections4/BidiMap;

    monitor-enter v1

    .line 128
    :try_start_15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 129
    sget-object v4, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->lastVideoIds:Lorg/apache/commons/collections4/BidiMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :catchall_3b
    move-exception v0

    goto :goto_47

    .line 131
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_3b

    .line 132
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda13;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_49

    .line 131
    :goto_47
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_3b

    throw v0

    :cond_49
    :goto_49
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic $r8$lambda$FQpjyKEMYURfioPaOUDp_Sqz1Dk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchedSetVideoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LNgZbSkkH9naoQUleHlDAf67snM()Ljava/lang/String;
    .registers 1

    .line 404
    const-string v0, "openQueue failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Lyd0Emwt-OvXNub3WxiS_6NJvRE(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Ljava/util/function/Function;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 155
    invoke-virtual {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    .line 156
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$PpfPg7n-I8LtNcbWZ1LoKqwWJNk()Ljava/lang/String;
    .registers 1

    .line 336
    const-string v0, "saveToPlaylist failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$TN-kkWHT0jV0XF5qZtIE3EAqpUc()Ljava/lang/String;
    .registers 1

    .line 361
    const-string v0, "saveToPlaylist failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$TembxqEcyF-V9H3Iwf00lsEPYqs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 305
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->saveToPlaylist(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YW1MJVbDdf1wNiF33TyDXRCabWY(Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;Ljava/lang/String;)V
    .registers 3

    .line 352
    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->getResult()Ljava/lang/Boolean;

    move-result-object p0

    .line 353
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 354
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchSucceededSave:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->showToast(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->clear()V

    return-void

    .line 358
    :cond_1d
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchFailedSave:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOlyiUMCJQlAfFNkMtxs1meS7po(Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;Landroid/content/Context;)V
    .registers 3

    .line 291
    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->getPlaylists()[Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 292
    array-length v0, p0

    if-nez v0, :cond_a

    goto :goto_12

    .line 293
    :cond_a
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;[Lkotlin/Pair;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public static synthetic $r8$lambda$eljqLb7h280QR6FsZd-QuSLQxnY(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 3

    .line 327
    invoke-virtual {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    .line 328
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$oLntqwoPrkpmQ6rqJaUtKdpP-YQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Queue created, playlistId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", setVideoId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$obn1B44jTqzb22BSeHAiUNAD8T0(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;ZZZZ)V
    .registers 11

    .line 204
    sget-object v1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->lastVideoIds:Lorg/apache/commons/collections4/BidiMap;

    monitor-enter v1

    .line 205
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 206
    invoke-static {}, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->getRequestHeader()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->fetchRequestIfNeeded(Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->getRequestForVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;

    move-result-object p0

    if-eqz p0, :cond_5b

    .line 209
    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->getPlaylistId()Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_5b

    .line 211
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p6, :cond_5b

    if-eqz p0, :cond_5b

    .line 214
    sput-object p6, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    .line 215
    sget-object p7, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_RESTORE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p7}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_44

    .line 216
    sget-object p7, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_PLAYLIST_ID:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p7, p6}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V

    goto :goto_44

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto/16 :goto_eb

    .line 218
    :cond_44
    :goto_44
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object p7, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchSucceededCreate:Ljava/lang/String;

    invoke-static {p7}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->showToast(Ljava/lang/String;)V

    .line 220
    new-instance p7, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda9;

    invoke-direct {p7, p6, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p7}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz p2, :cond_59

    .line 223
    invoke-static {p3, p1, p4, p5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->openQueue(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 225
    :cond_59
    monitor-exit v1

    return-void

    .line 229
    :cond_5b
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchFailedCreate:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->showToast(Ljava/lang/String;)V

    goto/16 :goto_e9

    .line 231
    :cond_62
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    invoke-static {}, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->getRequestHeader()Ljava/util/Map;

    move-result-object v2

    .line 232
    invoke-static {p1, p0, v0, v2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->fetchRequestIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->getRequestForVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;

    move-result-object p0

    if-eqz p0, :cond_e9

    .line 236
    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->getResult()Ljava/lang/String;

    move-result-object p0

    .line 237
    new-instance v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz p6, :cond_a3

    .line 239
    const-string p6, ""

    invoke-virtual {p6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9d

    .line 240
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->clearVideoId(Ljava/lang/String;)V

    .line 242
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchSucceededRemove:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->showToast(Ljava/lang/String;)V

    if-eqz p2, :cond_9b

    .line 244
    invoke-static {p3, p1, p4, p5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->openQueue(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 246
    :cond_9b
    monitor-exit v1

    return-void

    .line 248
    :cond_9d
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchFailedRemove:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->showToast(Ljava/lang/String;)V

    goto :goto_e9

    :cond_a3
    if-eqz p0, :cond_c5

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_ac

    goto :goto_c5

    .line 264
    :cond_ac
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->clearVideoId(Ljava/lang/String;)V

    .line 266
    new-instance p6, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda12;

    invoke-direct {p6, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-static {p6}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 267
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchSucceededAdd:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->showToast(Ljava/lang/String;)V

    if-eqz p2, :cond_e9

    .line 269
    invoke-static {p3, p1, p4, p5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->openQueue(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_e9

    .line 251
    :cond_c5
    :goto_c5
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-nez p7, :cond_d6

    .line 255
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchFailedAdd:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->showToast(Ljava/lang/String;)V

    .line 256
    monitor-exit v1

    return-void

    .line 259
    :cond_d6
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_PLAYLIST_ID:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/StringSetting;->resetToDefault()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    move-object p1, p3

    move p3, p2

    const/4 p2, 0x0

    const/4 p6, 0x0

    .line 260
    invoke-static/range {p1 .. p6}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchQueue(Landroid/content/Context;ZZZZZ)V

    .line 261
    monitor-exit v1

    return-void

    .line 274
    :cond_e9
    :goto_e9
    monitor-exit v1

    return-void

    :goto_eb
    monitor-exit v1
    :try_end_ec
    .catchall {:try_start_3 .. :try_end_ec} :catchall_40

    throw p0
.end method

.method public static synthetic $r8$lambda$p3x3aLtIjHyZWfIfwRnMkay_aEU(ZLjava/lang/String;Z)V
    .registers 10

    .line 371
    const-string v0, "https://www.youtube.com/playlist?list="

    const-string v1, "&t="

    sget-object v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    .line 372
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 373
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedQueue:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->handleCheckError(Ljava/lang/String;)V

    return-void

    :cond_12
    if-eqz p0, :cond_6f

    .line 379
    :try_start_14
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 380
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedVideoId:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->handleCheckError(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_77

    return-void

    .line 383
    :cond_20
    const-string p0, "&list="

    const-string v0, "https://www.youtube.com/watch?v="

    if-eqz p2, :cond_5c

    .line 384
    :try_start_26
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v3

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_52

    .line 390
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    div-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_54

    :cond_52
    const-string p0, ""

    :goto_54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_73

    .line 392
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_73

    .line 398
    :cond_6f
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 402
    :goto_73
    invoke-static {p0, p2}, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->openIntent(Ljava/lang/String;Z)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_76} :catch_77

    return-void

    :catch_77
    move-exception p0

    .line 404
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPBii7QFAX624s0pYs077NCkaZI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Playlist not available fetchedSetVideoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u4Jc4FU8RoaP16n6rd-c5MsAlq4(Landroid/content/Context;[Lkotlin/Pair;)V
    .registers 12

    const/4 v0, 0x0

    .line 295
    invoke-static {p0, v0}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createMainLayout(Landroid/content/Context;Ljava/lang/Integer;)Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/util/LinkedHashMap;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 297
    sget-object v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->SAVE_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    iget v2, v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->drawableId:I

    .line 299
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 300
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_1d
    if-ge v6, v4, :cond_3f

    aget-object v7, p1, v6

    .line 303
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 304
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 305
    new-instance v9, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda6;

    invoke-direct {v9, v8, v7}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {p0, v7, v2}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->createItemLayout(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v7

    .line 307
    invoke-interface {v1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 311
    :cond_3f
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$1;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$1;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {p1, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 319
    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 320
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 p1, 0x12c

    .line 323
    invoke-static {p0, v0, p1}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createSlideDialog(Landroid/content/Context;Landroid/view/View;I)Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-result-object p0

    .line 324
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5b

    .line 331
    :cond_7c
    invoke-virtual {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->show()V

    .line 332
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->clear()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smfetchQueue(Landroid/content/Context;ZZZZZ)V
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchQueue(Landroid/content/Context;ZZZZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smopenQueue(Landroid/content/Context;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->openQueue(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsaveToPlaylist(Landroid/content/Context;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->saveToPlaylist(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-string v0, "youtube_queue_manager_check_failed_auth"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedAuth:Ljava/lang/String;

    .line 57
    const-string v0, "youtube_queue_manager_check_failed_playlist_id"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedPlaylistId:Ljava/lang/String;

    .line 58
    const-string v0, "youtube_queue_manager_check_failed_queue"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedQueue:Ljava/lang/String;

    .line 59
    const-string v0, "youtube_queue_manager_check_failed_video_id"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedVideoId:Ljava/lang/String;

    .line 60
    const-string v0, "youtube_queue_manager_check_failed_generic"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedGeneric:Ljava/lang/String;

    .line 62
    const-string v0, "youtube_queue_manager_fetch_failed_add"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchFailedAdd:Ljava/lang/String;

    .line 63
    const-string v0, "youtube_queue_manager_fetch_failed_create"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchFailedCreate:Ljava/lang/String;

    .line 64
    const-string v0, "youtube_queue_manager_fetch_failed_remove"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchFailedRemove:Ljava/lang/String;

    .line 65
    const-string v0, "youtube_queue_manager_fetch_failed_save"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchFailedSave:Ljava/lang/String;

    .line 67
    const-string v0, "youtube_queue_manager_fetch_succeeded_add"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchSucceededAdd:Ljava/lang/String;

    .line 68
    const-string v0, "youtube_queue_manager_fetch_succeeded_create"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchSucceededCreate:Ljava/lang/String;

    .line 69
    const-string v0, "youtube_queue_manager_fetch_succeeded_remove"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchSucceededRemove:Ljava/lang/String;

    .line 70
    const-string v0, "youtube_queue_manager_fetch_succeeded_save"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->fetchSucceededSave:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_RESTORE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 73
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_PLAYLIST_ID:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    .line 74
    :cond_7b
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_PLAYLIST_ID:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->resetToDefault()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_83
    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->videoId:Ljava/lang/String;

    .line 79
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualHashBidiMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bidimap/DualHashBidiMap;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->lastVideoIds:Lorg/apache/commons/collections4/BidiMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildBottomSheetDialog(Landroid/content/Context;[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;)V
    .registers 9

    const/4 v0, 0x0

    .line 140
    invoke-static {p0, v0}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createMainLayout(Landroid/content/Context;Ljava/lang/Integer;)Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/util/LinkedHashMap;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 143
    array-length v2, p1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-object v4, p1, v3

    .line 144
    iget-object v5, v4, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->label:Ljava/lang/String;

    iget v6, v4, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->drawableId:I

    invoke-static {p0, v5, v6}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->createItemLayout(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    .line 145
    iget-object v4, v4, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->onClickAction:Ljava/util/function/Function;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_26
    const/16 p1, 0x12c

    .line 150
    invoke-static {p0, v0, p1}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createSlideDialog(Landroid/content/Context;Landroid/view/View;I)Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-result-object p1

    .line 152
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v3, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda14;

    invoke-direct {v3, p1, v2, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda14;-><init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Ljava/util/function/Function;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_34

    .line 160
    :cond_55
    invoke-virtual {p1}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->show()V

    return-void
.end method

.method private static createItemLayout(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 165
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 168
    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v3, 0x1

    .line 169
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 170
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    const v3, 0x101030e

    .line 172
    filled-new-array {v3}, [I

    move-result-object v3

    .line 174
    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 175
    :try_start_25
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_70

    .line 176
    invoke-static {v3}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 182
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp24:I

    invoke-direct {p2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 184
    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x2

    const/high16 p1, 0x41800000  # 16.0f

    .line 190
    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :catchall_70
    move-exception p0

    if-eqz v3, :cond_7b

    .line 174
    :try_start_73
    invoke-static {v3}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_7b

    :catchall_77
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7b
    :goto_7b
    throw p0
.end method

.method private static fetchQueue(Landroid/content/Context;ZZZZZ)V
    .registers 15

    .line 201
    sget-object v1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    .line 202
    sget-object v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->videoId:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;

    move-object v4, p0

    move v7, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;ZZZZ)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static handleCheckError(Ljava/lang/String;)V
    .registers 2

    .line 410
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedGeneric:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private static openQueue(Landroid/content/Context;)V
    .registers 3

    .line 366
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->openQueue(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private static openQueue(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 4

    .line 370
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda8;

    invoke-direct {p0, p2, p1, p3}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda8;-><init>(ZLjava/lang/String;Z)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThreadNowOrLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static prepareDialogBuilder(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 85
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 87
    invoke-static {}, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->isNotLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 88
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedAuth:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->handleCheckError(Ljava/lang/String;)V

    return-void

    .line 91
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 92
    sget-object p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->noVideoIdQueueEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->buildBottomSheetDialog(Landroid/content/Context;[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;)V

    return-void

    .line 94
    :cond_1b
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->lastVideoIds:Lorg/apache/commons/collections4/BidiMap;

    monitor-enter v0

    .line 95
    :try_start_1e
    sput-object p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->videoId:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/shared/PlayerType;->isNoneOrHidden()Z

    move-result v1

    if-nez v1, :cond_38

    .line 98
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    goto :goto_39

    :catchall_36
    move-exception p0

    goto :goto_5c

    :cond_38
    const/4 v1, 0x0

    .line 99
    :goto_39
    sget-object v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_48

    goto :goto_50

    :cond_48
    if-eqz v1, :cond_4d

    .line 105
    sget-object p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->removeFromQueueWithReloadEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    goto :goto_57

    .line 106
    :cond_4d
    sget-object p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->removeFromQueueEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    goto :goto_57

    :cond_50
    :goto_50
    if-eqz v1, :cond_55

    .line 101
    sget-object p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->addToQueueWithReloadEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    goto :goto_57

    .line 102
    :cond_55
    sget-object p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->addToQueueEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 108
    :goto_57
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->buildBottomSheetDialog(Landroid/content/Context;[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;)V

    .line 109
    monitor-exit v0

    return-void

    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_1e .. :try_end_5d} :catchall_36

    throw p0
.end method

.method private static saveToPlaylist(Landroid/content/Context;)V
    .registers 3

    .line 279
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 281
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedQueue:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->handleCheckError(Ljava/lang/String;)V

    return-void

    .line 286
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->getRequestHeader()Ljava/util/Map;

    move-result-object v1

    .line 285
    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->fetchRequestIfNeeded(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    .line 290
    :cond_19
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0, p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda18;-><init>(Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p0

    .line 336
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static saveToPlaylist(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 342
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 343
    sget-object p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->checkFailedPlaylistId:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->handleCheckError(Ljava/lang/String;)V

    return-void

    .line 346
    :cond_c
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    .line 347
    invoke-static {}, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->getRequestHeader()Ljava/util/Map;

    move-result-object v1

    .line 346
    invoke-static {v0, p0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->fetchRequestIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;

    move-result-object p0

    if-nez p0, :cond_19

    return-void

    .line 351
    :cond_19
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p0

    .line 361
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static showToast(Ljava/lang/String;)V
    .registers 1

    .line 414
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method public static syncIfNeeded()V
    .registers 1

    .line 117
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->playlistId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->syncStarted:Z

    if-nez v0, :cond_18

    invoke-static {}, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->isNotLoggedIn()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 118
    sput-boolean v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->syncStarted:Z

    .line 119
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->syncPlaylistItems()V

    :cond_18
    return-void
.end method

.method private static syncPlaylistItems()V
    .registers 1

    .line 124
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
