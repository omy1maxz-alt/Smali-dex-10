.class public final enum Lcom/gold/youtube/om7753/error/UserAction;
.super Ljava/lang/Enum;
.source "UserAction.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum CHECK_FOR_NEW_APP_VERSION:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum DELETE_FROM_HISTORY:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum DOWNLOAD_FAILED:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum DOWNLOAD_OPEN_DIALOG:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum DOWNLOAD_POSTPROCESSING:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum GET_SUGGESTIONS:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum LOAD_IMAGE:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum NEW_STREAMS_NOTIFICATIONS:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum OPEN_INFO_ITEM_DIALOG:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum PLAY_STREAM:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum PREFERENCES_MIGRATION:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum REQUESTED_BOOKMARK:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum REQUESTED_CHANNEL:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum REQUESTED_COMMENTS:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum REQUESTED_FEED:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum REQUESTED_KIOSK:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum REQUESTED_PLAYLIST:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum REQUESTED_STREAM:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum SEARCHED:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum SHARE_TO_YOUTUBE:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum SOMETHING_ELSE:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum SUBSCRIPTION_CHANGE:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum SUBSCRIPTION_GET:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum SUBSCRIPTION_IMPORT_EXPORT:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum SUBSCRIPTION_UPDATE:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum UI_ERROR:Lcom/gold/youtube/om7753/error/UserAction;

.field public static final enum USER_REPORT:Lcom/gold/youtube/om7753/error/UserAction;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 30

    new-instance v0, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v1, "USER_REPORT"

    const/4 v2, 0x0

    const-string/jumbo v3, "user report"

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/youtube/om7753/error/UserAction;->USER_REPORT:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v1, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v3, "UI_ERROR"

    const/4 v4, 0x1

    const-string/jumbo v5, "ui error"

    invoke-direct {v1, v3, v4, v5}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gold/youtube/om7753/error/UserAction;->UI_ERROR:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v3, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v5, "SUBSCRIPTION_CHANGE"

    const/4 v6, 0x2

    const-string/jumbo v7, "subscription change"

    invoke-direct {v3, v5, v6, v7}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/gold/youtube/om7753/error/UserAction;->SUBSCRIPTION_CHANGE:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v5, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v7, "SUBSCRIPTION_UPDATE"

    const/4 v8, 0x3

    const-string/jumbo v9, "subscription update"

    invoke-direct {v5, v7, v8, v9}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/gold/youtube/om7753/error/UserAction;->SUBSCRIPTION_UPDATE:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v7, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v9, "SUBSCRIPTION_GET"

    const/4 v10, 0x4

    const-string v11, "get subscription"

    invoke-direct {v7, v9, v10, v11}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/gold/youtube/om7753/error/UserAction;->SUBSCRIPTION_GET:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v9, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v11, "SUBSCRIPTION_IMPORT_EXPORT"

    const/4 v12, 0x5

    const-string/jumbo v13, "subscription import or export"

    invoke-direct {v9, v11, v12, v13}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/gold/youtube/om7753/error/UserAction;->SUBSCRIPTION_IMPORT_EXPORT:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v11, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v13, "LOAD_IMAGE"

    const/4 v14, 0x6

    const-string v15, "load image"

    invoke-direct {v11, v13, v14, v15}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/gold/youtube/om7753/error/UserAction;->LOAD_IMAGE:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v13, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "SOMETHING_ELSE"

    const/4 v14, 0x7

    const-string/jumbo v12, "something else"

    invoke-direct {v13, v15, v14, v12}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/gold/youtube/om7753/error/UserAction;->SOMETHING_ELSE:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v12, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "SEARCHED"

    const/16 v14, 0x8

    const-string v10, "searched"

    invoke-direct {v12, v15, v14, v10}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/gold/youtube/om7753/error/UserAction;->SEARCHED:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v10, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "GET_SUGGESTIONS"

    const/16 v14, 0x9

    const-string v8, "get suggestions"

    invoke-direct {v10, v15, v14, v8}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/gold/youtube/om7753/error/UserAction;->GET_SUGGESTIONS:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v8, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "REQUESTED_STREAM"

    const/16 v14, 0xa

    const-string v6, "requested stream"

    invoke-direct {v8, v15, v14, v6}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/gold/youtube/om7753/error/UserAction;->REQUESTED_STREAM:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v6, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "REQUESTED_CHANNEL"

    const/16 v14, 0xb

    const-string v4, "requested channel"

    invoke-direct {v6, v15, v14, v4}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/gold/youtube/om7753/error/UserAction;->REQUESTED_CHANNEL:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v4, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "REQUESTED_PLAYLIST"

    const/16 v14, 0xc

    const-string v2, "requested playlist"

    invoke-direct {v4, v15, v14, v2}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/error/UserAction;->REQUESTED_PLAYLIST:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v2, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "REQUESTED_KIOSK"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "requested kiosk"

    invoke-direct {v2, v15, v14, v4}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/error/UserAction;->REQUESTED_KIOSK:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v4, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "REQUESTED_COMMENTS"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "requested comments"

    invoke-direct {v4, v15, v14, v2}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/error/UserAction;->REQUESTED_COMMENTS:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v2, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "REQUESTED_FEED"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "requested feed"

    invoke-direct {v2, v15, v14, v4}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/error/UserAction;->REQUESTED_FEED:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v4, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "REQUESTED_BOOKMARK"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "bookmark"

    invoke-direct {v4, v15, v14, v2}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/error/UserAction;->REQUESTED_BOOKMARK:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v2, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "DELETE_FROM_HISTORY"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "delete from history"

    invoke-direct {v2, v15, v14, v4}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/error/UserAction;->DELETE_FROM_HISTORY:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v4, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "PLAY_STREAM"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "play stream"

    invoke-direct {v4, v15, v14, v2}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/error/UserAction;->PLAY_STREAM:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v2, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "DOWNLOAD_OPEN_DIALOG"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "download open dialog"

    invoke-direct {v2, v15, v14, v4}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v4, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "DOWNLOAD_POSTPROCESSING"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "download post-processing"

    invoke-direct {v4, v15, v14, v2}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/error/UserAction;->DOWNLOAD_POSTPROCESSING:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v2, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "DOWNLOAD_FAILED"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "download failed"

    invoke-direct {v2, v15, v14, v4}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/error/UserAction;->DOWNLOAD_FAILED:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v4, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v15, "NEW_STREAMS_NOTIFICATIONS"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "new streams notifications"

    invoke-direct {v4, v15, v14, v2}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/error/UserAction;->NEW_STREAMS_NOTIFICATIONS:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v2, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v14, "PREFERENCES_MIGRATION"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "migration of preferences"

    invoke-direct {v2, v14, v15, v4}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/error/UserAction;->PREFERENCES_MIGRATION:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v4, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v14, "SHARE_TO_YOUTUBE"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string/jumbo v2, "share to youtube"

    invoke-direct {v4, v14, v15, v2}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/error/UserAction;->SHARE_TO_YOUTUBE:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v2, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v14, "CHECK_FOR_NEW_APP_VERSION"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "check for new app version"

    invoke-direct {v2, v14, v15, v4}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/error/UserAction;->CHECK_FOR_NEW_APP_VERSION:Lcom/gold/youtube/om7753/error/UserAction;

    new-instance v4, Lcom/gold/youtube/om7753/error/UserAction;

    const-string v14, "OPEN_INFO_ITEM_DIALOG"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const-string v2, "open info item dialog"

    invoke-direct {v4, v14, v15, v2}, Lcom/gold/youtube/om7753/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/error/UserAction;->OPEN_INFO_ITEM_DIALOG:Lcom/gold/youtube/om7753/error/UserAction;

    const/16 v2, 0x1b

    new-array v2, v2, [Lcom/gold/youtube/om7753/error/UserAction;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v4, v2, v0

    sput-object v2, Lcom/gold/youtube/om7753/error/UserAction;->$VALUES:[Lcom/gold/youtube/om7753/error/UserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/gold/youtube/om7753/error/UserAction;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/error/UserAction;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/error/UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/youtube/om7753/error/UserAction;

    return-object p0
.end method

.method public static values()[Lcom/gold/youtube/om7753/error/UserAction;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/error/UserAction;->$VALUES:[Lcom/gold/youtube/om7753/error/UserAction;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/error/UserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/error/UserAction;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/error/UserAction;->message:Ljava/lang/String;

    return-object v0
.end method
