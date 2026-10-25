.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;
.source "YoutubeChannelTabLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;

    return-object v0
.end method

.method public static getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_54

    :cond_7
    goto :goto_3a

    :sswitch_8
    const-string v0, "livestreams"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_12
    const-string v0, "videos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3b

    :sswitch_1c
    const-string v0, "shorts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_26
    const-string v0, "albums"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_30
    const-string v0, "playlists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_3b

    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    packed-switch v0, :pswitch_data_6a

    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/UnsupportedTabException;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/extractor/exceptions/UnsupportedTabException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_44  #0x4
    const-string v0, "/playlists"

    return-object v0

    :pswitch_47  #0x3
    const-string v0, "/releases"

    return-object v0

    :pswitch_4a  #0x2
    const-string v0, "/streams"

    return-object v0

    :pswitch_4d  #0x1
    const-string v0, "/shorts"

    return-object v0

    :pswitch_50  #0x0
    const-string v0, "/videos"

    return-object v0

    nop

    :sswitch_data_54
    .sparse-switch
        -0x6f36471f -> :sswitch_30
        -0x5459b01c -> :sswitch_26
        -0x35d4f489 -> :sswitch_1c
        -0x30ad84a8 -> :sswitch_12
        -0x1a2eb179 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_50  #00000000
        :pswitch_4d  #00000001
        :pswitch_4a  #00000002
        :pswitch_47  #00000003
        :pswitch_44  #00000004
    .end packed-switch
.end method


# virtual methods
.method public getAvailableContentFilter()[Ljava/lang/String;
    .registers 6

    const-string v0, "albums"

    const-string v1, "playlists"

    const-string v2, "videos"

    const-string v3, "shorts"

    const-string v4, "livestreams"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_3} :catch_6

    nop

    const/4 v0, 0x1

    return v0

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
