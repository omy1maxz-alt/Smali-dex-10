.class public final enum Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;
.super Ljava/lang/Enum;
.source "ChangeStartPagePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/ChangeStartPagePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum ALL_SUBSCRIPTIONS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum BROWSE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum COURSES:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum DEFAULT:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum FASHION:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum GAMING:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum HISTORY:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum LIBRARY:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum LIKED_VIDEO:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum LIVE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum MOVIE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum MUSIC:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum NEWS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum NOTIFICATIONS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum PLAYLISTS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum SEARCH:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum SHOPPING:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum SHORTS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum SPORTS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum SUBSCRIPTIONS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum VIRTUAL_REALITY:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum WATCH_LATER:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

.field public static final enum YOUR_CLIPS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;


# instance fields
.field final id:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final isBrowseId:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;
    .registers 24

    .line 31
    sget-object v1, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->DEFAULT:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v2, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->ALL_SUBSCRIPTIONS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v3, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->BROWSE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v4, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->HISTORY:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v5, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->LIBRARY:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v6, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->MOVIE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v7, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->NOTIFICATIONS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v8, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->PLAYLISTS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v9, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SUBSCRIPTIONS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v10, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->YOUR_CLIPS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v11, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->COURSES:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v12, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->FASHION:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v13, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->GAMING:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v14, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->LIVE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v15, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->MUSIC:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v16, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->NEWS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v17, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SHOPPING:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v18, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SPORTS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v19, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->VIRTUAL_REALITY:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v20, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->LIKED_VIDEO:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v21, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->WATCH_LATER:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v22, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SEARCH:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v23, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SHORTS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    filled-new-array/range {v1 .. v23}, [Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$misBrowseId(Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->isBrowseId()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misIntentAction(Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->isIntentAction()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 35
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->DEFAULT:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 40
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ALL_SUBSCRIPTIONS"

    const/4 v3, 0x1

    const-string v4, "FEchannels"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->ALL_SUBSCRIPTIONS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 41
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/4 v2, 0x2

    const-string v3, "FEguide_builder"

    const-string v4, "BROWSE"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->BROWSE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 42
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/4 v2, 0x3

    const-string v3, "FEhistory"

    const-string v4, "HISTORY"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->HISTORY:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 43
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/4 v2, 0x4

    const-string v3, "FElibrary"

    const-string v4, "LIBRARY"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->LIBRARY:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 44
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/4 v2, 0x5

    const-string v3, "FEstorefront"

    const-string v4, "MOVIE"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->MOVIE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 45
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/4 v2, 0x6

    const-string v3, "FEactivity"

    const-string v4, "NOTIFICATIONS"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->NOTIFICATIONS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 46
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/4 v2, 0x7

    const-string v3, "FEplaylist_aggregation"

    const-string v4, "PLAYLISTS"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->PLAYLISTS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 47
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0x8

    const-string v3, "FEsubscriptions"

    const-string v4, "SUBSCRIPTIONS"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SUBSCRIPTIONS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 48
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0x9

    const-string v3, "FEclips"

    const-string v4, "YOUR_CLIPS"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->YOUR_CLIPS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 53
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0xa

    const-string v3, "UCtFRv9O2AHqOZjjynzrv-xg"

    const-string v4, "COURSES"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->COURSES:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 54
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0xb

    const-string v3, "UCrpQ4p1Ql_hG8rKXIKM1MOQ"

    const-string v4, "FASHION"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->FASHION:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 55
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0xc

    const-string v3, "UCOpNcN46UbXVtpKMrmU4Abg"

    const-string v4, "GAMING"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->GAMING:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 56
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0xd

    const-string v3, "UC4R8DWoMoI7CAwX8_LjQHig"

    const-string v4, "LIVE"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->LIVE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 57
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0xe

    const-string v3, "UC-9-kyTW8ZkZNDHQJ6FgpwQ"

    const-string v4, "MUSIC"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->MUSIC:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 58
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0xf

    const-string v3, "UCYfdidRxbB8Qhf0Nx7ioOYw"

    const-string v4, "NEWS"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->NEWS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 59
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0x10

    const-string v3, "UCkYQyvc_i9hXEo4xic9Hh2g"

    const-string v4, "SHOPPING"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SHOPPING:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 60
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0x11

    const-string v3, "UCEgdi0XIXXZ-qJOFPf4JSKw"

    const-string v4, "SPORTS"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SPORTS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 61
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0x12

    const-string v3, "UCzuqhhs6NWbgTzMuM09WKDQ"

    const-string v4, "VIRTUAL_REALITY"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->VIRTUAL_REALITY:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 66
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0x13

    const-string v3, "VLLL"

    const-string v4, "LIKED_VIDEO"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->LIKED_VIDEO:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 67
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0x14

    const-string v3, "VLWL"

    const-string v4, "WATCH_LATER"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->WATCH_LATER:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 72
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "SEARCH"

    const/16 v3, 0x15

    const-string v4, "com.google.android.youtube.action.open.search"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SEARCH:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 73
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    const/16 v2, 0x16

    const-string v3, "com.google.android.youtube.action.open.shorts"

    const-string v4, "SHORTS"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->SHORTS:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    .line 31
    invoke-static {}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->$values()[Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->$VALUES:[Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
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
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->id:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->isBrowseId:Ljava/lang/Boolean;

    return-void
.end method

.method private isBrowseId()Z
    .registers 2

    .line 87
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->isBrowseId:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isIntentAction()Z
    .registers 2

    .line 92
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->isBrowseId:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    const-class v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;
    .registers 1

    .line 31
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->$VALUES:[Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    return-object v0
.end method
