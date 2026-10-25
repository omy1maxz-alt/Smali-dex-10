.class final enum Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;
.super Ljava/lang/Enum;
.source "PlaylistPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueueManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final enum ADD_TO_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final enum ADD_TO_QUEUE_AND_OPEN_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final enum ADD_TO_QUEUE_AND_PLAY_VIDEO:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final enum ADD_TO_QUEUE_AND_RELOAD_VIDEO:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final enum OPEN_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final enum REMOVE_FROM_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final enum REMOVE_FROM_QUEUE_AND_OPEN_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final enum REMOVE_FROM_QUEUE_AND_RELOAD_VIDEO:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final enum SAVE_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final addToQueueEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final addToQueueWithReloadEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final noVideoIdQueueEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final removeFromQueueEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

.field public static final removeFromQueueWithReloadEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;


# instance fields
.field public final drawableId:I

.field public final label:Ljava/lang/String;

.field public final onClickAction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$618LlHc5uIGgQJJgTiiw4RmXHvQ(Landroid/content/Context;)Ljava/lang/Void;
    .registers 1

    .line 495
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->-$$Nest$smsaveToPlaylist(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CWsXdrdCVvFPxI2U1wirD4_TT0I(Landroid/content/Context;)Ljava/lang/Void;
    .registers 1

    .line 486
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->-$$Nest$smopenQueue(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Dpu3--y8XkP8P4JC1f9Kx1lFrBk(Landroid/content/Context;)Ljava/lang/Void;
    .registers 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    .line 450
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->-$$Nest$smfetchQueue(Landroid/content/Context;ZZZZZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ux0kR8mMZaYP783iJLBQwaNYu1Q(Landroid/content/Context;)Ljava/lang/Void;
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 423
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->-$$Nest$smfetchQueue(Landroid/content/Context;ZZZZZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YegpcLjxBnXy1IulG3n5pNBsjeo(Landroid/content/Context;)Ljava/lang/Void;
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    .line 468
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->-$$Nest$smfetchQueue(Landroid/content/Context;ZZZZZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aso--92M-Rc_JphLN3ns9qO2roM(Landroid/content/Context;)Ljava/lang/Void;
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 459
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->-$$Nest$smfetchQueue(Landroid/content/Context;ZZZZZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hlo-aEXwFMOWgQZ5DChWAb2--4k(Landroid/content/Context;)Ljava/lang/Void;
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    .line 432
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->-$$Nest$smfetchQueue(Landroid/content/Context;ZZZZZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mWagGlFJu1RGptgxcGIZOJOM3rw(Landroid/content/Context;)Ljava/lang/Void;
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    .line 441
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->-$$Nest$smfetchQueue(Landroid/content/Context;ZZZZZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wd35GZ9Mo3tVluHMct7F0Hc9DSs(Landroid/content/Context;)Ljava/lang/Void;
    .registers 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    .line 477
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->-$$Nest$smfetchQueue(Landroid/content/Context;ZZZZZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;
    .registers 9

    .line 417
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->ADD_TO_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    sget-object v1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->ADD_TO_QUEUE_AND_OPEN_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    sget-object v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->ADD_TO_QUEUE_AND_PLAY_VIDEO:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    sget-object v3, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->ADD_TO_QUEUE_AND_RELOAD_VIDEO:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    sget-object v4, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->REMOVE_FROM_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    sget-object v5, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->REMOVE_FROM_QUEUE_AND_OPEN_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    sget-object v6, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->REMOVE_FROM_QUEUE_AND_RELOAD_VIDEO:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    sget-object v7, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->OPEN_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    sget-object v8, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->SAVE_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    filled-new-array/range {v0 .. v8}, [Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 16

    .line 418
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    new-instance v6, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "ADD_TO_QUEUE"

    const/4 v2, 0x0

    const-string v3, "youtube_queue_manager_add_to_queue"

    const-string v4, "yt_outline_list_add_black_24"

    const-string v5, "yt_outline_experimental_playlist_add_vd_theme_24"

    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->ADD_TO_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 427
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    new-instance v7, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "ADD_TO_QUEUE_AND_OPEN_QUEUE"

    const/4 v3, 0x1

    const-string v4, "youtube_queue_manager_add_to_queue_and_open_queue"

    const-string v5, "yt_outline_list_add_black_24"

    const-string v6, "yt_outline_experimental_playlist_add_vd_theme_24"

    invoke-direct/range {v1 .. v7}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    sput-object v1, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->ADD_TO_QUEUE_AND_OPEN_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 436
    new-instance v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    new-instance v8, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "ADD_TO_QUEUE_AND_PLAY_VIDEO"

    const/4 v4, 0x2

    const-string v5, "youtube_queue_manager_add_to_queue_and_play_video"

    const-string v6, "yt_outline_list_play_arrow_black_24"

    const-string v7, "yt_outline_experimental_playlist_vd_theme_24"

    invoke-direct/range {v2 .. v8}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    sput-object v2, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->ADD_TO_QUEUE_AND_PLAY_VIDEO:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 445
    new-instance v3, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    new-instance v9, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda3;-><init>()V

    const-string v4, "ADD_TO_QUEUE_AND_RELOAD_VIDEO"

    const/4 v5, 0x3

    const-string v6, "youtube_queue_manager_add_to_queue_and_reload_video"

    const-string v7, "yt_outline_arrow_circle_black_24"

    const-string v8, "yt_outline_experimental_replay_vd_theme_24"

    invoke-direct/range {v3 .. v9}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    sput-object v3, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->ADD_TO_QUEUE_AND_RELOAD_VIDEO:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 454
    new-instance v4, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    new-instance v10, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda4;-><init>()V

    const-string v5, "REMOVE_FROM_QUEUE"

    const/4 v6, 0x4

    const-string v7, "youtube_queue_manager_remove_from_queue"

    const-string v8, "yt_outline_trash_can_black_24"

    const-string v9, "yt_outline_experimental_circle_slash_vd_theme_24"

    invoke-direct/range {v4 .. v10}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    move-object v6, v4

    sput-object v6, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->REMOVE_FROM_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 463
    new-instance v7, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    new-instance v13, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda5;

    invoke-direct {v13}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda5;-><init>()V

    const-string v8, "REMOVE_FROM_QUEUE_AND_OPEN_QUEUE"

    const/4 v9, 0x5

    const-string v10, "youtube_queue_manager_remove_from_queue_and_open_queue"

    const-string v11, "yt_outline_trash_can_black_24"

    const-string v12, "yt_outline_experimental_circle_slash_vd_theme_24"

    invoke-direct/range {v7 .. v13}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    sput-object v7, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->REMOVE_FROM_QUEUE_AND_OPEN_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 472
    new-instance v8, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    new-instance v14, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda6;

    invoke-direct {v14}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda6;-><init>()V

    const-string v9, "REMOVE_FROM_QUEUE_AND_RELOAD_VIDEO"

    const/4 v10, 0x6

    const-string v11, "youtube_queue_manager_remove_from_queue_and_reload_video"

    const-string v12, "yt_outline_arrow_circle_black_24"

    const-string v13, "yt_outline_experimental_replay_vd_theme_24"

    invoke-direct/range {v8 .. v14}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    sput-object v8, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->REMOVE_FROM_QUEUE_AND_RELOAD_VIDEO:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 481
    new-instance v4, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    new-instance v15, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda7;

    invoke-direct {v15}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda7;-><init>()V

    const-string v10, "OPEN_QUEUE"

    const/4 v11, 0x7

    const-string v12, "youtube_queue_manager_open_queue"

    const-string v13, "yt_outline_list_view_black_24"

    const-string v14, "yt_outline_experimental_queue_vd_theme_24"

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    sput-object v4, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->OPEN_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 490
    new-instance v5, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    new-instance v15, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda8;

    invoke-direct {v15}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager$$ExternalSyntheticLambda8;-><init>()V

    const-string v10, "SAVE_QUEUE"

    const/16 v11, 0x8

    const-string v12, "youtube_queue_manager_save_queue"

    const-string v13, "yt_outline_bookmark_black_24"

    const-string v14, "yt_outline_experimental_bookmark_vd_theme_24"

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    sput-object v5, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->SAVE_QUEUE:Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 417
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->$values()[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    move-result-object v9

    sput-object v9, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->$VALUES:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 512
    filled-new-array {v0, v1, v2, v4, v5}, [Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    move-result-object v9

    sput-object v9, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->addToQueueEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 520
    filled-new-array/range {v0 .. v5}, [Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->addToQueueWithReloadEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 529
    filled-new-array {v6, v7, v4, v5}, [Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->removeFromQueueEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 536
    filled-new-array {v6, v7, v8, v4, v5}, [Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->removeFromQueueWithReloadEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    .line 544
    filled-new-array {v4, v5}, [Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->noVideoIdQueueEntries:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 505
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 506
    sget-object p1, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    .line 507
    sget-boolean p2, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->USE_BOLD_ICONS:Z

    if-eqz p2, :cond_a

    move-object p4, p5

    .line 506
    :cond_a
    invoke-static {p1, p4}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->drawableId:I

    .line 508
    invoke-static {p3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->label:Ljava/lang/String;

    .line 509
    iput-object p6, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->onClickAction:Ljava/util/function/Function;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 417
    const-class v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;
    .registers 1

    .line 417
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->$VALUES:[Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$QueueManager;

    return-object v0
.end method
