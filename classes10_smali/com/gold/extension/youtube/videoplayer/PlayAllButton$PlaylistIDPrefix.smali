.class public final enum Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;
.super Ljava/lang/Enum;
.source "PlayAllButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/videoplayer/PlayAllButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaylistIDPrefix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum ALL_CONTENTS_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum ALL_CONTENTS_WITH_TIME_ASCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum ALL_CONTENTS_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum ALL_MEMBERSHIPS_CONTENTS:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum LIVESTREAMS_ONLY_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum LIVESTREAMS_ONLY_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum MEMBERSHIPS_LIVESTREAMS_ONLY:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum MEMBERSHIPS_SHORTS_ONLY:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum MEMBERSHIPS_VIDEOS_ONLY:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum SHORTS_ONLY_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum SHORTS_ONLY_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum VIDEOS_ONLY_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

.field public static final enum VIDEOS_ONLY_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;


# instance fields
.field public final prefixId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final useChannelId:Z


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;
    .registers 13

    .line 21
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->ALL_CONTENTS_WITH_TIME_ASCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v1, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->ALL_CONTENTS_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v2, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->ALL_CONTENTS_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v3, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->VIDEOS_ONLY_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v4, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->VIDEOS_ONLY_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v5, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->SHORTS_ONLY_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v6, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->SHORTS_ONLY_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v7, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->LIVESTREAMS_ONLY_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v8, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->LIVESTREAMS_ONLY_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v9, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->ALL_MEMBERSHIPS_CONTENTS:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v10, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->MEMBERSHIPS_VIDEOS_ONLY:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v11, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->MEMBERSHIPS_SHORTS_ONLY:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    sget-object v12, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->MEMBERSHIPS_LIVESTREAMS_ONLY:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    filled-new-array/range {v0 .. v12}, [Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 22
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/4 v1, 0x0

    const-string v2, "UL"

    const-string v3, "ALL_CONTENTS_WITH_TIME_ASCENDING"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->ALL_CONTENTS_WITH_TIME_ASCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 23
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const-string v1, "UU"

    const-string v2, "ALL_CONTENTS_WITH_TIME_DESCENDING"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->ALL_CONTENTS_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 24
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/4 v1, 0x2

    const-string v2, "PU"

    const-string v4, "ALL_CONTENTS_WITH_POPULAR_DESCENDING"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->ALL_CONTENTS_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 25
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/4 v1, 0x3

    const-string v2, "UULF"

    const-string v4, "VIDEOS_ONLY_WITH_TIME_DESCENDING"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->VIDEOS_ONLY_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 26
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/4 v1, 0x4

    const-string v2, "UULP"

    const-string v4, "VIDEOS_ONLY_WITH_POPULAR_DESCENDING"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->VIDEOS_ONLY_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 27
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/4 v1, 0x5

    const-string v2, "UUSH"

    const-string v4, "SHORTS_ONLY_WITH_TIME_DESCENDING"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->SHORTS_ONLY_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 28
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/4 v1, 0x6

    const-string v2, "UUPS"

    const-string v4, "SHORTS_ONLY_WITH_POPULAR_DESCENDING"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->SHORTS_ONLY_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 29
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/4 v1, 0x7

    const-string v2, "UULV"

    const-string v4, "LIVESTREAMS_ONLY_WITH_TIME_DESCENDING"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->LIVESTREAMS_ONLY_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 30
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/16 v1, 0x8

    const-string v2, "UUPV"

    const-string v4, "LIVESTREAMS_ONLY_WITH_POPULAR_DESCENDING"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->LIVESTREAMS_ONLY_WITH_POPULAR_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 31
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/16 v1, 0x9

    const-string v2, "UUMO"

    const-string v4, "ALL_MEMBERSHIPS_CONTENTS"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->ALL_MEMBERSHIPS_CONTENTS:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 32
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/16 v1, 0xa

    const-string v2, "UUMF"

    const-string v4, "MEMBERSHIPS_VIDEOS_ONLY"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->MEMBERSHIPS_VIDEOS_ONLY:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 33
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/16 v1, 0xb

    const-string v2, "UUMS"

    const-string v4, "MEMBERSHIPS_SHORTS_ONLY"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->MEMBERSHIPS_SHORTS_ONLY:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 34
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    const/16 v1, 0xc

    const-string v2, "UUMV"

    const-string v4, "MEMBERSHIPS_LIVESTREAMS_ONLY"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->MEMBERSHIPS_LIVESTREAMS_ONLY:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    .line 21
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->$values()[Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->$VALUES:[Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
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
            "Z)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->prefixId:Ljava/lang/String;

    .line 43
    iput-boolean p4, p0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->useChannelId:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    const-class v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;
    .registers 1

    .line 21
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->$VALUES:[Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    return-object v0
.end method
