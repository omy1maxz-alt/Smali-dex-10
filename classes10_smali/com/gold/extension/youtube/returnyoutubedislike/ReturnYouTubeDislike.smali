.class public Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;
.super Ljava/lang/Object;
.source "ReturnYouTubeDislike.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;
    }
.end annotation


# static fields
.field private static final CACHE_TIMEOUT_FAILURE_MILLISECONDS:J = 0x2bf20L

.field private static final CACHE_TIMEOUT_SUCCESS_MILLISECONDS:J = 0x668a0L

.field private static final MAX_MILLISECONDS_TO_BLOCK_UI_WAITING_FOR_FETCH:J = 0xfa0L

.field private static final MIDDLE_SEPARATOR_CHARACTER:C = '◎'

.field private static dislikeCountFormatter:Landroid/icu/text/CompactDecimalFormat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ReturnYouTubeDislike.class"
    .end annotation
.end field

.field private static dislikePercentageFormatter:Landroid/icu/text/NumberFormat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ReturnYouTubeDislike.class"
    .end annotation
.end field

.field private static final fetchCache:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "itself"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;",
            ">;"
        }
    .end annotation
.end field

.field public static final leftSeparatorBounds:Landroid/graphics/Rect;

.field private static final leftSeparatorShape:Landroid/graphics/drawable/ShapeDrawable;

.field public static final leftSeparatorShapePaddingPixels:I

.field private static final middleSeparatorBounds:Landroid/graphics/Rect;

.field private static final voteSerialExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;",
            ">;"
        }
    .end annotation
.end field

.field private isShort:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private originalDislikeSpan:Landroid/text/Spanned;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private replacementLikeDislikeSpan:Landroid/text/SpannableString;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeFetched:J

.field private userVote:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final videoId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0jqKdto4PJEsq51AbnoxzDTohqo(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->lambda$clearUICache$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1Mp29JAjwJlEKIFvyx6fs-_QH-s(Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)Ljava/lang/String;
    .registers 3

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating likes span for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9nUlv_QfnS2rOsEWOXGE2BSIE9M(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Lcom/gold/extension/youtube/shared/PlayerType;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->lambda$sendVote$15(Lcom/gold/extension/youtube/shared/PlayerType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GguGhFZLDDNTBazPVF-vh1RRVXI(J)Ljava/lang/String;
    .registers 4

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Waited but future was not complete after: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HGRlZ94DlrJQYCvMEcf7pqMz1qg(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->lambda$sendVote$17(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hfnf237FiWjpb-V052mzo7uC37E()Ljava/lang/String;
    .registers 1

    .line 233
    const-string v0, "Using estimated likes"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Ic3t1MjQwjMxW-e-KGKDlKz3nwI()Ljava/lang/String;
    .registers 1

    .line 554
    const-string v0, "Likes are hidden"

    return-object v0
.end method

.method public static synthetic $r8$lambda$LwUUFSN5mlPodTgBCb-hKqt-WXg()Ljava/lang/String;
    .registers 1

    .line 528
    const-string v0, "Cannot add dislike to UI (RYD data not available)"

    return-object v0
.end method

.method public static synthetic $r8$lambda$RkM_0tUKWnZXiETS2ggGdvO567c()Ljava/lang/String;
    .registers 1

    .line 616
    const-string v0, "Failed to send vote"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SePoa5tDICEq9JPi1oJNvGHhzRE()Ljava/lang/String;
    .registers 1

    .line 587
    const-string v0, "waitForFetchAndUpdateReplacementSpan failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$TgY2FbTYFbaZI47XkJgLiAhTyTY()Ljava/lang/String;
    .registers 1

    .line 557
    const-string v0, "Using estimated likes"

    return-object v0
.end method

.method public static synthetic $r8$lambda$W0JdFhw-VrkYyISH9-H4Rjhj45k()Ljava/lang/String;
    .registers 1

    .line 620
    const-string v0, "Error trying to send vote"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Wdby4F5c-xrFCDlajI6Wyhg_6D0(JLcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;)Z
    .registers 3

    .line 403
    invoke-direct {p2, p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->isExpired(J)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 405
    new-instance p1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda12;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_e
    return p0
.end method

.method public static synthetic $r8$lambda$Ws9DIowM7wJV8TXjkp28qCfY8as()Ljava/lang/String;
    .registers 1

    .line 651
    const-string v0, "setUserVote failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$XgHqagY_MR1KkxSN93lpSApllkI(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;)Ljava/lang/String;
    .registers 3

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing expired fetch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$axYB1jFW8a_AdpOaOyBmtsu9UiI(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->lambda$waitForFetchAndUpdateReplacementSpan$13()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dSOuN7Iv8xe0N_RmBoqbjQy44zA(Ljava/lang/String;)Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;
    .registers 1

    .line 432
    invoke-static {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->fetchVotes(Ljava/lang/String;)Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gYo8BbPsl6BfawLa61O0D_W-NOc(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Landroid/text/Spanned;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->lambda$waitForFetchAndUpdateReplacementSpan$12(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lgnNrvqAESleOHXfqBBAZwBA-TM(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->lambda$waitForFetchAndUpdateReplacementSpan$8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$md6uCMSKA2fPLmKQ1PGx_XK28tA()Ljava/lang/String;
    .registers 1

    .line 454
    const-string v0, "Future failure "

    return-object v0
.end method

.method public static synthetic $r8$lambda$rzQiPEuwhZpv4EPNBpsRaKlrJGM()Ljava/lang/String;
    .registers 1

    .line 644
    const-string v0, "Cannot update UI (vote data not available)"

    return-object v0
.end method

.method public static synthetic $r8$lambda$xunF-a8z6J7ttAm-0Ns2pgseeSE(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)Ljava/lang/String;
    .registers 3

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUserVote: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->fetchCache:Ljava/util/Map;

    .line 104
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->voteSerialExecutor:Ljava/util/concurrent/ExecutorService;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x3f99999a  # 1.2f

    .line 130
    invoke-static {v1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v1

    const/high16 v2, 0x41600000  # 14.0f

    .line 131
    invoke-static {v2}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->leftSeparatorBounds:Landroid/graphics/Rect;

    const v1, 0x406ccccd  # 3.7f

    .line 132
    invoke-static {v1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v1

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->middleSeparatorBounds:Landroid/graphics/Rect;

    const v1, 0x41066666  # 8.4f

    .line 135
    invoke-static {v1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v1

    sput v1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->leftSeparatorShapePaddingPixels:I

    .line 137
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->leftSeparatorShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 138
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->videoId:Ljava/lang/String;

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->timeFetched:J

    .line 432
    new-instance v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static clearAllUICaches()V
    .registers 3

    .line 422
    sget-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->fetchCache:Ljava/util/Map;

    monitor-enter v0

    .line 423
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    .line 424
    invoke-direct {v2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->clearUICache()V

    goto :goto_b

    :catchall_1b
    move-exception v1

    goto :goto_1f

    .line 426
    :cond_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1b

    throw v1
.end method

.method private declared-synchronized clearUICache()V
    .registers 2

    monitor-enter p0

    .line 467
    :try_start_1
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->replacementLikeDislikeSpan:Landroid/text/SpannableString;

    if-eqz v0, :cond_10

    .line 468
    new-instance v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda13;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_15

    :cond_10
    :goto_10
    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->replacementLikeDislikeSpan:Landroid/text/SpannableString;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_e

    .line 471
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_e

    throw v0
.end method

.method private static createDislikeSpan(Landroid/text/Spanned;ZZLcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)Landroid/text/SpannableString;
    .registers 12
    .param p0  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_7

    .line 208
    invoke-static {p0, p3}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->newSpannableWithDislikes(Landroid/text/Spanned;Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0

    .line 218
    :cond_7
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->containsNumber(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_35

    .line 227
    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->RYD_ESTIMATED_LIKE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_24

    .line 229
    const-string p1, "youtube_ryd_video_likes_hidden_by_video_owner"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->newSpanUsingStylingOfAnotherSpan(Landroid/text/Spanned;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0

    .line 233
    :cond_24
    new-instance p1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda19;

    invoke-direct {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 234
    invoke-virtual {p3}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->getLikeCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->formatDislikeCount(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_36

    :cond_35
    move-object p1, p0

    .line 237
    :goto_36
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 238
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->RYD_COMPACT_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x2

    if-nez v1, :cond_88

    .line 241
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getTextDirectionString()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_56

    .line 244
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_85

    .line 246
    :cond_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v4, Lcom/gold/extension/youtube/returnyoutubedislike/VerticallyCenteredImageSpan;

    .line 250
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getLeftSeparatorDrawable()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/gold/extension/youtube/returnyoutubedislike/VerticallyCenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v6, 0x1

    .line 249
    invoke-interface {v5, v4, v6, v3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 252
    new-instance v4, Lcom/gold/extension/youtube/returnyoutubedislike/FixedWidthEmptySpan;

    sget v6, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->leftSeparatorShapePaddingPixels:I

    invoke-direct {v4, v6}, Lcom/gold/extension/youtube/returnyoutubedislike/FixedWidthEmptySpan;-><init>(I)V

    const/4 v6, 0x3

    invoke-interface {v5, v4, v3, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 256
    :goto_85
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 260
    :cond_88
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->newSpanUsingStylingOfAnotherSpan(Landroid/text/Spanned;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_94

    .line 264
    const-string p1, "  ◎  "

    goto :goto_96

    .line 265
    :cond_94
    const-string p1, " \u2009\u2009◎\u2009\u2009 "

    .line 267
    :goto_96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v3

    .line 268
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 269
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 270
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getSeparatorColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    sget-object v4, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->middleSeparatorBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 275
    new-instance v4, Lcom/gold/extension/youtube/returnyoutubedislike/VerticallyCenteredImageSpan;

    invoke-direct {v4, p1, p2}, Lcom/gold/extension/youtube/returnyoutubedislike/VerticallyCenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 p1, v1, 0x1

    invoke-interface {v3, v4, v1, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 278
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 281
    invoke-static {p0, p3}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->newSpannableWithDislikes(Landroid/text/Spanned;Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 283
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private static formatDislikeCount(J)Ljava/lang/String;
    .registers 6

    .line 340
    const-class v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    monitor-enter v0

    .line 341
    :try_start_3
    sget-object v1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikeCountFormatter:Landroid/icu/text/CompactDecimalFormat;

    if-nez v1, :cond_32

    .line 345
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 346
    sget-object v2, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {v1, v2}, Landroid/icu/text/CompactDecimalFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;

    move-result-object v2

    sput-object v2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikeCountFormatter:Landroid/icu/text/CompactDecimalFormat;

    .line 352
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_32

    .line 353
    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    .line 354
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticApiModelOutline0;->m(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticApiModelOutline1;->m(Landroid/icu/text/DecimalFormatSymbols;[Ljava/lang/String;)V

    .line 355
    sget-object v2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikeCountFormatter:Landroid/icu/text/CompactDecimalFormat;

    invoke-virtual {v2, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_3a

    .line 359
    :cond_32
    :goto_32
    sget-object v1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikeCountFormatter:Landroid/icu/text/CompactDecimalFormat;

    invoke-virtual {v1, p0, p1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 360
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_30

    throw p0
.end method

.method private static formatDislikePercentage(F)Ljava/lang/String;
    .registers 6

    .line 364
    const-class v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    monitor-enter v0

    .line 365
    :try_start_3
    sget-object v1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikePercentageFormatter:Landroid/icu/text/NumberFormat;

    if-nez v1, :cond_36

    .line 366
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 367
    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v2

    sput-object v2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikePercentageFormatter:Landroid/icu/text/NumberFormat;

    .line 370
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_36

    .line 371
    sget-object v2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikePercentageFormatter:Landroid/icu/text/NumberFormat;

    instance-of v3, v2, Landroid/icu/text/DecimalFormat;

    if-eqz v3, :cond_36

    check-cast v2, Landroid/icu/text/DecimalFormat;

    .line 372
    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    .line 373
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticApiModelOutline0;->m(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticApiModelOutline1;->m(Landroid/icu/text/DecimalFormatSymbols;[Ljava/lang/String;)V

    .line 374
    invoke-virtual {v2, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_55

    :cond_36
    :goto_36
    float-to-double v1, p0

    const-wide v3, 0x3f847ae147ae147bL  # 0.01

    cmpl-double p0, v1, v3

    if-ltz p0, :cond_47

    .line 379
    sget-object p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikePercentageFormatter:Landroid/icu/text/NumberFormat;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_4d

    .line 381
    :cond_47
    sget-object p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikePercentageFormatter:Landroid/icu/text/NumberFormat;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 384
    :goto_4d
    sget-object p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->dislikePercentageFormatter:Landroid/icu/text/NumberFormat;

    invoke-virtual {p0, v1, v2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 385
    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_34

    throw p0
.end method

.method public static getFetchForVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;
    .registers 2

    const/4 v0, 0x1

    .line 394
    invoke-static {p0, v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getFetchForVideoId(Ljava/lang/String;Z)Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    move-result-object p0

    return-object p0
.end method

.method private static getFetchForVideoId(Ljava/lang/String;Z)Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;
    .registers 7

    .line 398
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->fetchCache:Ljava/util/Map;

    monitor-enter v0

    .line 401
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 402
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 409
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    if-nez v1, :cond_2b

    if-eqz p1, :cond_2b

    .line 411
    new-instance v1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 414
    :cond_2b
    :goto_2b
    monitor-exit v0

    return-object v1

    .line 415
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public static getFetchForVideoIdOrNull(Ljava/lang/String;)Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 390
    invoke-static {p0, v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getFetchForVideoId(Ljava/lang/String;Z)Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    move-result-object p0

    return-object p0
.end method

.method public static getLeftSeparatorDrawable()Landroid/graphics/drawable/ShapeDrawable;
    .registers 3

    .line 194
    sget-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->leftSeparatorShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getSeparatorColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private static getSeparatorColor()I
    .registers 1

    .line 188
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x33ffffff

    return v0

    :cond_a
    const v0, -0x262627

    return v0
.end method

.method private isExpired(J)Z
    .registers 7

    .line 436
    iget-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->timeFetched:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x2bf20

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    return v1

    :cond_c
    const-wide/32 v2, 0x668a0

    cmp-long p1, p1, v2

    const/4 p2, 0x1

    if-lez p1, :cond_15

    return p2

    .line 444
    :cond_15
    invoke-virtual {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->fetchCompleted()Z

    move-result p1

    if-eqz p1, :cond_25

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v2, v3}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getFetchData(J)Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;

    move-result-object p0

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    return v1

    :cond_25
    :goto_25
    return p2
.end method

.method public static isPreviouslyCreatedSegmentedSpan(Ljava/lang/String;)Z
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x25ce

    .line 290
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$clearUICache$6()Ljava/lang/String;
    .registers 3

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clearing replacement span for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendVote$15(Lcom/gold/extension/youtube/shared/PlayerType;)Ljava/lang/String;
    .registers 4

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot vote for video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as current player type does not match: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendVote$17(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V
    .registers 2

    .line 614
    :try_start_0
    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->videoId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->sendVote(Ljava/lang/String;Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 616
    new-instance p1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$waitForFetchAndUpdateReplacementSpan$12(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 4

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Replacing span: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with previously created dislike span of data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$waitForFetchAndUpdateReplacementSpan$13()Ljava/lang/String;
    .registers 3

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Replaced: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->originalDislikeSpan:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' with: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->replacementLikeDislikeSpan:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' using video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$waitForFetchAndUpdateReplacementSpan$8()Ljava/lang/String;
    .registers 3

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring regular video dislike span, as data loaded was previously used for a Short: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static newSpanUsingStylingOfAnotherSpan(Landroid/text/Spanned;Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .registers 9
    .param p0  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p0, p1, :cond_9

    .line 326
    instance-of v0, p0, Landroid/text/SpannableString;

    if-eqz v0, :cond_9

    .line 327
    check-cast p0, Landroid/text/SpannableString;

    return-object p0

    .line 330
    :cond_9
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 331
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 332
    array-length v1, p1

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_2d

    aget-object v4, p1, v3

    .line 333
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2d
    return-object v0
.end method

.method private static newSpannableWithDislikes(Landroid/text/Spanned;Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)Landroid/text/SpannableString;
    .registers 4
    .param p0  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 320
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RYD_DISLIKE_PERCENTAGE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 321
    invoke-virtual {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->getDislikePercentage()F

    move-result p1

    invoke-static {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->formatDislikePercentage(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    .line 322
    :cond_15
    invoke-virtual {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->getDislikeCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->formatDislikeCount(J)Ljava/lang/String;

    move-result-object p1

    .line 319
    :goto_1d
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->newSpanUsingStylingOfAnotherSpan(Landroid/text/Spanned;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method private static newSpannableWithLikes(Landroid/text/Spanned;Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)Landroid/text/SpannableString;
    .registers 4
    .param p0  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 315
    invoke-virtual {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->getLikeCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->formatDislikeCount(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->newSpanUsingStylingOfAnotherSpan(Landroid/text/Spanned;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method private static spansHaveEqualTextAndColor(Landroid/text/Spanned;Landroid/text/Spanned;)Z
    .registers 7
    .param p0  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 300
    :cond_10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ForegroundColorSpan;

    .line 301
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ForegroundColorSpan;

    .line 302
    array-length v0, p0

    .line 303
    array-length v2, p1

    if-eq v0, v2, :cond_2b

    return v1

    :cond_2b
    move v2, v1

    :goto_2c
    if-ge v2, v0, :cond_40

    .line 307
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v4

    if-eq v3, v4, :cond_3d

    return v1

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_40
    const/4 p0, 0x1

    return p0
.end method

.method private waitForFetchAndUpdateReplacementSpan(Landroid/text/Spanned;ZZZZ)Landroid/text/Spanned;
    .registers 8
    .param p1  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-wide/16 v0, 0xfa0

    .line 521
    :try_start_2
    invoke-virtual {p0, v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getFetchData(J)Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;

    move-result-object v0

    if-nez v0, :cond_23

    .line 525
    const-string p0, "youtube_ryd_failure_connection_timeout"

    .line 526
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    .line 527
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    .line 525
    invoke-static {p0, p3, p3, p2}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->handleConnectionError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Exception;Ljava/lang/Integer;)V

    .line 528
    new-instance p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p1

    :catch_20
    move-exception p0

    goto/16 :goto_a6

    .line 532
    :cond_23
    monitor-enter p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_20

    if-eqz p4, :cond_2d

    const/4 p4, 0x1

    .line 539
    :try_start_27
    iput-boolean p4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->isShort:Z

    goto :goto_3b

    :catchall_2a
    move-exception p2

    goto/16 :goto_a4

    .line 540
    :cond_2d
    iget-boolean p4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->isShort:Z

    if-eqz p4, :cond_3b

    .line 546
    new-instance p2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 548
    monitor-exit p0

    return-object p1

    :cond_3b
    :goto_3b
    if-eqz p5, :cond_6f

    .line 552
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->containsNumber(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_61

    .line 553
    sget-object p2, Lcom/gold/extension/youtube/settings/Settings;->RYD_ESTIMATED_LIKE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_59

    .line 554
    new-instance p2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 555
    monitor-exit p0

    return-object p1

    .line 557
    :cond_59
    new-instance p2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 563
    :cond_61
    new-instance p2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda7;

    invoke-direct {p2, v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 564
    invoke-static {p1, v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->newSpannableWithLikes(Landroid/text/Spanned;Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)Landroid/text/SpannableString;

    move-result-object p2

    monitor-exit p0

    return-object p2

    .line 567
    :cond_6f
    iget-object p4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->originalDislikeSpan:Landroid/text/Spanned;

    if-eqz p4, :cond_89

    iget-object p5, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->replacementLikeDislikeSpan:Landroid/text/SpannableString;

    if-eqz p5, :cond_89

    .line 568
    invoke-static {p1, p4}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->spansHaveEqualTextAndColor(Landroid/text/Spanned;Landroid/text/Spanned;)Z

    move-result p4

    if-eqz p4, :cond_89

    .line 569
    new-instance p2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Landroid/text/Spanned;)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 571
    iget-object p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->replacementLikeDislikeSpan:Landroid/text/SpannableString;

    monitor-exit p0

    return-object p2

    .line 576
    :cond_89
    iget-object p4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->userVote:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    if-eqz p4, :cond_90

    .line 577
    invoke-virtual {v0, p4}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->updateUsingVote(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V

    .line 579
    :cond_90
    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->originalDislikeSpan:Landroid/text/Spanned;

    .line 580
    invoke-static {p1, p2, p3, v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->createDislikeSpan(Landroid/text/Spanned;ZZLcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)Landroid/text/SpannableString;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->replacementLikeDislikeSpan:Landroid/text/SpannableString;

    .line 581
    new-instance p2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 584
    iget-object p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->replacementLikeDislikeSpan:Landroid/text/SpannableString;

    monitor-exit p0

    return-object p2

    .line 585
    :goto_a4
    monitor-exit p0
    :try_end_a5
    .catchall {:try_start_27 .. :try_end_a5} :catchall_2a

    :try_start_a5
    throw p2
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a6} :catch_20

    .line 587
    :goto_a6
    new-instance p2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p2, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public fetchCompleted()Z
    .registers 1

    .line 463
    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->future:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized getDislikeSpanForShort(Landroid/text/Spanned;)Landroid/text/Spanned;
    .registers 9
    .param p1  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 510
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->waitForFetchAndUpdateReplacementSpan(Landroid/text/Spanned;ZZZZ)Landroid/text/Spanned;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object p0

    :catchall_d
    move-exception v0

    move-object p0, v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_d

    throw p0
.end method

.method public declared-synchronized getDislikesSpanForRegularVideo(Landroid/text/Spanned;ZZ)Landroid/text/Spanned;
    .registers 11
    .param p1  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 492
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->waitForFetchAndUpdateReplacementSpan(Landroid/text/Spanned;ZZZZ)Landroid/text/Spanned;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object p0

    :catchall_d
    move-exception v0

    move-object p0, v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_d

    throw p0
.end method

.method public getFetchData(J)Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 450
    :try_start_0
    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->future:Ljava/util/concurrent/Future;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_a} :catch_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 454
    new-instance p1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 452
    :catch_15
    new-instance p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda17;

    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda17;-><init>(J)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getLikeSpanForShort(Landroid/text/Spanned;)Landroid/text/Spanned;
    .registers 9
    .param p1  # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 501
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->waitForFetchAndUpdateReplacementSpan(Landroid/text/Spanned;ZZZZ)Landroid/text/Spanned;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object p0

    :catchall_d
    move-exception v0

    move-object p0, v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_d

    throw p0
.end method

.method public getVideoId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 475
    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method public sendVote(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V
    .registers 5
    .param p1  # Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 594
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 595
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :try_start_6
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    .line 599
    iget-boolean v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->isShort:Z

    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/PlayerType;->isNoneHiddenOrMinimized()Z

    move-result v2

    if-eq v1, v2, :cond_24

    .line 600
    new-instance p1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda14;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Lcom/gold/extension/youtube/shared/PlayerType;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 606
    const-string p0, "youtube_ryd_failure_ryd_enabled_while_playing_video_then_user_voted"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void

    .line 610
    :cond_24
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->setUserVote(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V

    .line 612
    sget-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->voteSerialExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda15;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    .line 620
    new-instance p1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda16;

    invoke-direct {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setUserVote(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V
    .registers 4
    .param p1  # Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 630
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :try_start_3
    new-instance v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda20;-><init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 634
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_32

    .line 635
    :try_start_c
    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->userVote:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    .line 636
    invoke-direct {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->clearUICache()V

    .line 637
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_2f

    .line 639
    :try_start_12
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-wide/16 v0, 0xfa0

    .line 641
    invoke-virtual {p0, v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->getFetchData(J)Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;

    move-result-object p0

    if-nez p0, :cond_2b

    .line 644
    new-instance p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda21;

    invoke-direct {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 647
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->updateUsingVote(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_32

    :cond_2e
    return-void

    :catchall_2f
    move-exception p1

    .line 637
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception p0

    .line 651
    new-instance p1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda22;

    invoke-direct {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda22;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized setVideoIdIsShort(Z)V
    .registers 2

    monitor-enter p0

    .line 482
    :try_start_1
    iput-boolean p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->isShort:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 483
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method
