.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;
.source "YoutubePlaylistLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic fromUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    return-object p1
.end method

.method public fromUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;
    .registers 8

    :try_start_0
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const-string v1, "list"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMixId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "v"

    invoke-static {v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->extractVideoIdFromMixId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.youtube.com/watch?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&list="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    new-instance v5, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    invoke-direct {v5, p1, v3, v1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;-><init>(Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V
    :try_end_46
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_46} :catch_4d

    return-object v4

    :cond_47
    nop

    invoke-super {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    return-object v0

    :catch_4d
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error could not parse URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isHTTP(Ljava/net/URL;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeURL(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isInvidiousURL(Ljava/net/URL;)Z

    move-result v1

    if-eqz v1, :cond_54

    :cond_16
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/watch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "/playlist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_33

    :cond_2b
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "the url given is neither a video nor a playlist URL"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
    :goto_33
    const-string v2, "list"

    invoke-static {v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4c

    const-string v3, "[a-zA-Z0-9_-]{10,}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    return-object v2

    :cond_44
    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "the list-ID given in the URL does not match the list pattern"

    invoke-direct {v3, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4c
    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "the URL given does not include a playlist"

    invoke-direct {v3, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_54
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "the url given is not a YouTube-URL"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error could not parse URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/playlist?list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;
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
