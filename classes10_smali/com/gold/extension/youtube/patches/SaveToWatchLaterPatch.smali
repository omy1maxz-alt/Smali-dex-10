.class public final Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch;
.super Ljava/lang/Object;
.source "SaveToWatchLaterPatch.java"


# static fields
.field private static volatile saveVideoRequest:Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;


# direct methods
.method public static synthetic $r8$lambda$G5OVcHKhnRisOvZzDmkdB7FHq4M(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "watch later response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_EI6g26ZosJkfUMldMLc0_Mo1-c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not save video, stream details are null: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mXBCgtb0OgorpBNtthUywLiNw-k(Ljava/lang/String;)V
    .registers 3

    .line 40
    sget-object v0, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch;->saveVideoRequest:Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    invoke-virtual {v0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->getStreamDetails()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_37

    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 42
    new-instance p0, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 44
    const-string p0, "STATUS_SUCCEEDED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 46
    const-string p0, "\"playlistEditResults\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 47
    const-string p0, "youtube_save_to_watch_later_success_toast"

    goto :goto_2f

    .line 48
    :cond_2d
    const-string p0, "youtube_save_to_watch_later_already_exists_toast"

    .line 45
    :goto_2f
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    :cond_36
    return-void

    .line 51
    :cond_37
    new-instance v0, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xHe8l2HGCd9xFYvGP1AVBBSnUro()Ljava/lang/String;
    .registers 1

    .line 55
    const-string v0, "Could not fetch video details"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveVideo()V
    .registers 2

    .line 30
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch;->saveVideoRequest:Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch;->saveVideoRequest:Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    invoke-virtual {v0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->fetchIsDone()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 33
    :cond_d
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->SEND_SAVE_VIDEO_TO_WATCH_LATER:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v1, v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->fetchDetails(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    move-result-object v1

    sput-object v1, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch;->saveVideoRequest:Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    .line 39
    new-instance v1, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    .line 55
    new-instance v1, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/SaveToWatchLaterPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 56
    const-string v0, "youtube_save_to_watch_later_error_toast"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void
.end method
