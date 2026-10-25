.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandlerFactory;
.source "YoutubeSearchQueryHandlerFactory.java"


# static fields
.field public static final ALL:Ljava/lang/String; = "all"

.field public static final CHANNELS:Ljava/lang/String; = "channels"

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;

.field public static final MUSIC_ALBUMS:Ljava/lang/String; = "music_albums"

.field public static final MUSIC_ARTISTS:Ljava/lang/String; = "music_artists"

.field public static final MUSIC_PLAYLISTS:Ljava/lang/String; = "music_playlists"

.field private static final MUSIC_SEARCH_URL:Ljava/lang/String; = "https://music.youtube.com/search?q="

.field public static final MUSIC_SONGS:Ljava/lang/String; = "music_songs"

.field public static final MUSIC_VIDEOS:Ljava/lang/String; = "music_videos"

.field public static final PLAYLISTS:Ljava/lang/String; = "playlists"

.field private static final SEARCH_URL:Ljava/lang/String; = "https://www.youtube.com/results?search_query="

.field public static final VIDEOS:Ljava/lang/String; = "videos"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/SearchQueryHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;

    return-object v0
.end method

.method public static getSearchParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "8AEB"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_72

    :cond_10
    goto :goto_61

    :sswitch_11
    const-string v0, "music_videos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    goto :goto_62

    :sswitch_1b
    const-string v0, "music_songs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto :goto_62

    :sswitch_25
    const-string v0, "music_albums"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x5

    goto :goto_62

    :sswitch_2f
    const-string v0, "channels"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_62

    :sswitch_39
    const-string v0, "music_artists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x7

    goto :goto_62

    :sswitch_43
    const-string v0, "videos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_62

    :sswitch_4d
    const-string v0, "music_playlists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x6

    goto :goto_62

    :sswitch_57
    const-string v0, "playlists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    goto :goto_62

    :goto_61
    const/4 v0, -0x1

    :goto_62
    packed-switch v0, :pswitch_data_94

    return-object v1

    :pswitch_66  #0x3, 0x4, 0x5, 0x6, 0x7
    const-string v0, ""

    return-object v0

    :pswitch_69  #0x2
    const-string v0, "EgIQA_ABAQ%3D%3D"

    return-object v0

    :pswitch_6c  #0x1
    const-string v0, "EgIQAvABAQ%3D%3D"

    return-object v0

    :pswitch_6f  #0x0
    const-string v0, "EgIQAfABAQ%3D%3D"

    return-object v0

    :sswitch_data_72
    .sparse-switch
        -0x6f36471f -> :sswitch_57
        -0x6a0208b9 -> :sswitch_4d
        -0x30ad84a8 -> :sswitch_43
        -0x21ca560e -> :sswitch_39
        0x556423d0 -> :sswitch_2f
        0x59631b3e -> :sswitch_25
        0x5eb80f64 -> :sswitch_1b
        0x7d0f46b2 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_6f  #00000000
        :pswitch_6c  #00000001
        :pswitch_69  #00000002
        :pswitch_66  #00000003
        :pswitch_66  #00000004
        :pswitch_66  #00000005
        :pswitch_66  #00000006
        :pswitch_66  #00000007
    .end packed-switch
.end method


# virtual methods
.method public getAvailableContentFilter()[Ljava/lang/String;
    .registers 9

    const-string v6, "music_albums"

    const-string v7, "music_playlists"

    const-string v0, "all"

    const-string v1, "videos"

    const-string v2, "channels"

    const-string v3, "playlists"

    const-string v4, "music_songs"

    const-string v5, "music_videos"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_e
    const-string v0, ""

    :goto_10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_f6

    :cond_17
    goto :goto_67

    :sswitch_18
    const-string v1, "music_videos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    goto :goto_68

    :sswitch_22
    const-string v1, "music_songs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x3

    goto :goto_68

    :sswitch_2c
    const-string v1, "music_albums"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x5

    goto :goto_68

    :sswitch_36
    const-string v1, "channels"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_68

    :sswitch_40
    const-string v1, "music_artists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x7

    goto :goto_68

    :sswitch_4a
    const-string v2, "videos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_68

    :sswitch_53
    const-string v1, "music_playlists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x6

    goto :goto_68

    :sswitch_5d
    const-string v1, "playlists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x2

    goto :goto_68

    :goto_67
    const/4 v1, -0x1

    :goto_68
    const-string v2, "https://www.youtube.com/results?search_query="

    packed-switch v1, :pswitch_data_118

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sp=8AEB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_89  #0x3, 0x4, 0x5, 0x6, 0x7
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://music.youtube.com/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_a1  #0x2
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sp=EgIQA_ABAQ%253D%253D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_bd  #0x1
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sp=EgIQAvABAQ%253D%253D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_d9  #0x0
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sp=EgIQAfABAQ%253D%253D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_f6
    .sparse-switch
        -0x6f36471f -> :sswitch_5d
        -0x6a0208b9 -> :sswitch_53
        -0x30ad84a8 -> :sswitch_4a
        -0x21ca560e -> :sswitch_40
        0x556423d0 -> :sswitch_36
        0x59631b3e -> :sswitch_2c
        0x5eb80f64 -> :sswitch_22
        0x7d0f46b2 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_d9  #00000000
        :pswitch_bd  #00000001
        :pswitch_a1  #00000002
        :pswitch_89  #00000003
        :pswitch_89  #00000004
        :pswitch_89  #00000005
        :pswitch_89  #00000006
        :pswitch_89  #00000007
    .end packed-switch
.end method
