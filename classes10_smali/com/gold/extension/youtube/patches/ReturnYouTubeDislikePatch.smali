.class public Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;
.super Ljava/lang/Object;
.source "ReturnYouTubeDislikePatch.java"


# static fields
.field private static volatile currentVideoData:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static volatile lastPrefetchedVideoId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static volatile rollingNumberSpan:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1-MDt9xsH8BptrmT36TIMCutPQs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prefetching RYD for video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8MsRlIob8iy1QbnCD7UFK2YuAec()Ljava/lang/String;
    .registers 1

    .line 269
    const-string v0, "updateRollingNumber failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$BI3m_I97HTFhMPSIvY7hM931CUI(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot vote for video, as video id does not match videoData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getVideoId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", endPoint: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jz89tYZS1LKVSXt-5a3VOaeqFZM(Z)Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "useNewLithoTextCreation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K8t6t7f5FQxa-xjM0jmCotaVdus(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown endpoint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KleFszBKja2MAAhlmlkHvwsGlCA()Ljava/lang/String;
    .registers 1

    .line 152
    const-string v0, "onRollingNumberLoaded failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$PDVL1UoRpLPlkpmsPueoEzr-KTg()Ljava/lang/String;
    .registers 1

    .line 290
    const-string v0, "Cannot pre-fetch RYD, network is not connected"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SvjcV5_8ezXRJDBhDr8YAtG07XM()Ljava/lang/String;
    .registers 1

    .line 220
    const-string v0, "Removing rolling number TextView changes"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SxgN1rCkx906pRgDJuTAGzh-GYI()Ljava/lang/String;
    .registers 1

    .line 123
    const-string v0, "onLithoTextLoaded failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$_OXmeqw8VuXW32yYeXb48081gxE()Ljava/lang/String;
    .registers 1

    .line 249
    const-string v0, "Cannot update rolling number (field is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$aCcCYGyQfT6EiFreeG3kNhWpfK8()Ljava/lang/String;
    .registers 1

    .line 193
    const-string v0, "Adding rolling number TextView changes"

    return-object v0
.end method

.method public static synthetic $r8$lambda$bPy9YCNkJFM4ssjzluvTCEyHRsw()Ljava/lang/String;
    .registers 1

    .line 328
    const-string v0, "Ignoring blank videoId"

    return-object v0
.end method

.method public static synthetic $r8$lambda$d_n_OcsuGpC2uPCsuW5pw55Tzys()Ljava/lang/String;
    .registers 1

    .line 345
    const-string v0, "Cannot fetch RYD, network is not connected"

    return-object v0
.end method

.method public static synthetic $r8$lambda$f979TODTNk91wY8QYtLfWRfNLvg()Ljava/lang/String;
    .registers 1

    .line 376
    const-string v0, "Ignore playlist votes"

    return-object v0
.end method

.method public static synthetic $r8$lambda$iwtrSI75NjKT2J3yLk7nAVRZLvU()Ljava/lang/String;
    .registers 1

    .line 353
    const-string v0, "newVideoLoaded failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$lmO-QDlc2uw-Cqi5MI1oRPJz98k(Ljava/lang/String;Lcom/gold/extension/youtube/shared/PlayerType;)Ljava/lang/String;
    .registers 4

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New video ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " playerType: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mdUGW5fMVkHKRgAwCaU3TamQwOw()Ljava/lang/String;
    .registers 1

    .line 403
    const-string v0, "sendVote failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$q7XsEMShKJp-b7n-IhxSbvcyxOw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring short video ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r5IGPlTmHX7Fi-VoODBNlrDA5-c()Ljava/lang/String;
    .registers 1

    .line 181
    const-string v0, "onRollingNumberMeasured failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$sH9aqTWJYgtKub2aJ_jEmIixG6A()Ljava/lang/String;
    .registers 1

    .line 317
    const-string v0, "preloadVideoId failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$y52IQGjTofl2PwuOZzfdBmUVH1A()Ljava/lang/String;
    .registers 1

    .line 386
    const-string v0, "Cannot send vote, as current video data is null"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRollingNumberPatchChanges(Landroid/widget/TextView;)V
    .registers 4

    .line 192
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v0

    if-nez v0, :cond_2d

    .line 193
    new-instance v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 194
    sget v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->leftSeparatorShapePaddingPixels:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 195
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getLeftSeparatorDrawable()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    .line 196
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isRightToLeftLocale()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 197
    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_25

    .line 199
    :cond_22
    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_25
    const/4 v0, 0x4

    .line 205
    invoke-virtual {p0, v0}, Landroid/view/View;->setTextAlignment(I)V

    const/4 v0, 0x1

    .line 210
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_2d
    return-void
.end method

.method private static clearData()V
    .registers 1

    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->currentVideoData:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    return-void
.end method

.method public static newVideoLoaded(Ljava/lang/String;)V
    .registers 3

    .line 326
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RYD_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2c

    :cond_d
    if-eqz p0, :cond_4e

    .line 327
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4e

    .line 332
    :cond_16
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/PlayerType;->isNoneHiddenOrSlidingMinimized()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 335
    invoke-static {}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->clearData()V

    return-void

    .line 339
    :cond_24
    sget-object v1, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->currentVideoData:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    invoke-static {v1, p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->videoIdIsSame(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :goto_2c
    return-void

    .line 342
    :cond_2d
    new-instance v1, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;Lcom/gold/extension/youtube/shared/PlayerType;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 344
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_47

    .line 345
    new-instance p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda14;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x0

    .line 346
    sput-object p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->currentVideoData:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    return-void

    .line 351
    :cond_47
    invoke-static {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getFetchForVideoIdOrNull(Ljava/lang/String;)Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    move-result-object p0

    sput-object p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->currentVideoData:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    return-void

    .line 328
    :cond_4e
    :goto_4e
    new-instance p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda12;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p0

    .line 353
    new-instance v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onLithoTextLoaded(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-static {p0, p1, v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->onLithoTextLoaded(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static onLithoTextLoaded(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 5

    .line 98
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RYD_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_48

    .line 102
    :cond_d
    invoke-interface {p0}, Lcom/gold/extension/shared/patches/components/ContextInterface;->patch_getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_20

    if-eqz v0, :cond_48

    .line 103
    const-string v1, "video_action_bar.e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_48

    :catch_1e
    move-exception p0

    goto :goto_49

    .line 107
    :cond_20
    invoke-interface {p0}, Lcom/gold/extension/shared/patches/components/ContextInterface;->patch_getPathBuilder()Ljava/lang/StringBuilder;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    const-string v0, "segmented_like_dislike_button.e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 112
    sget-object p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->currentVideoData:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    if-nez p0, :cond_35

    goto :goto_48

    .line 116
    :cond_35
    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_3f

    .line 117
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    .line 119
    :cond_3f
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getDislikesSpanForRegularVideo(Landroid/text/Spanned;ZZ)Landroid/text/Spanned;

    move-result-object p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_1e

    return-object p0

    :cond_48
    :goto_48
    return-object p1

    .line 123
    :goto_49
    new-instance p2, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda19;

    invoke-direct {p2}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {p2, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static onRollingNumberLoaded(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 144
    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->onLithoTextLoaded(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 148
    sput-object p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->rollingNumberSpan:Ljava/lang/CharSequence;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception p0

    goto :goto_15

    :cond_14
    return-object p1

    .line 152
    :goto_15
    new-instance v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static onRollingNumberMeasured(Ljava/lang/String;F)F
    .registers 3

    .line 165
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RYD_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 166
    invoke-static {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->isPreviouslyCreatedSegmentedSpan(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 171
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->RYD_COMPACT_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p0, :cond_22

    add-float/2addr p1, v0

    return p1

    :cond_22
    add-float/2addr v0, p1

    .line 175
    sget-object p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->leftSeparatorBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    sget p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->leftSeparatorShapePaddingPixels:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2e

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0

    :catch_2e
    move-exception p0

    goto :goto_31

    :cond_30
    return p1

    .line 181
    :goto_31
    new-instance v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return p1
.end method

.method public static preloadVideoId(Ljava/lang/String;Z)V
    .registers 2

    .line 283
    :try_start_0
    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->RYD_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_15

    .line 286
    :cond_d
    sget-object p1, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->lastPrefetchedVideoId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    :goto_15
    return-void

    .line 289
    :cond_16
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result p1

    if-nez p1, :cond_28

    .line 290
    new-instance p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x0

    .line 291
    sput-object p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->lastPrefetchedVideoId:Ljava/lang/String;

    return-void

    .line 306
    :cond_28
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->lastPlayerResponseIsShort()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 307
    new-instance p1, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 308
    sput-object p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->lastPrefetchedVideoId:Ljava/lang/String;

    return-void

    .line 312
    :cond_39
    new-instance p1, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 313
    invoke-static {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getFetchForVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    .line 315
    sput-object p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->lastPrefetchedVideoId:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p0

    .line 317
    new-instance p1, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static removeRollingNumberPatchChanges(Landroid/widget/TextView;)V
    .registers 3

    .line 219
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 220
    new-instance v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 224
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_1d
    return-void
.end method

.method public static sendVote(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 372
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RYD_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_26

    .line 375
    :cond_d
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 376
    new-instance p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 380
    :cond_1c
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/PlayerType;->isNoneHiddenOrMinimized()Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_26
    return-void

    .line 384
    :cond_27
    sget-object v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->currentVideoData:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    if-nez v0, :cond_34

    .line 386
    new-instance p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 388
    :cond_34
    invoke-static {v0, p1}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->videoIdIsSame(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 389
    new-instance p0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0, p1}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda3;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 394
    :cond_43
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->values()[Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_49
    if-ge v2, v1, :cond_5c

    aget-object v3, p1, v2

    .line 395
    iget-object v4, v3, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->endpoint:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 396
    invoke-virtual {v0, v3}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->sendVote(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V

    return-void

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 401
    :cond_5c
    new-instance p1, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    return-void

    :catch_65
    move-exception p0

    .line 403
    new-instance p1, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static updateRollingNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 233
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RYD_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    .line 234
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->removeRollingNumberPatchChanges(Landroid/widget/TextView;)V

    return-object p1

    :catch_10
    move-exception p0

    goto :goto_48

    .line 239
    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->isPreviouslyCreatedSegmentedSpan(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 241
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->removeRollingNumberPatchChanges(Landroid/widget/TextView;)V

    return-object p1

    .line 245
    :cond_20
    sget-object v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->rollingNumberSpan:Ljava/lang/CharSequence;

    if-nez v0, :cond_30

    .line 249
    new-instance v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda20;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 250
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->removeRollingNumberPatchChanges(Landroid/widget/TextView;)V

    return-object p1

    .line 254
    :cond_30
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->RYD_COMPACT_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 255
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->removeRollingNumberPatchChanges(Landroid/widget/TextView;)V

    goto :goto_43

    .line 257
    :cond_40
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch;->addRollingNumberPatchChanges(Landroid/widget/TextView;)V

    :goto_43
    const/4 v1, 0x0

    .line 261
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_10

    return-object v0

    .line 269
    :goto_48
    new-instance v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static useNewLithoTextCreation(Z)Z
    .registers 2

    .line 69
    new-instance v0, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticLambda17;-><init>(Z)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return p0
.end method

.method private static videoIdIsSame(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Ljava/lang/String;)Z
    .registers 2
    .param p0  # Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    if-eqz p1, :cond_10

    :cond_4
    if-eqz p0, :cond_12

    .line 359
    invoke-virtual {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getVideoId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method
