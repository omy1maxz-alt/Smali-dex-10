.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;
.source "YoutubeChannelLinkHandlerFactory.java"


# static fields
.field private static final EXCLUDED_SEGMENTS:Ljava/util/regex/Pattern;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    const-string v0, "playlist|watch|attribution_link|watch_popup|embed|feed|select_site|account|reporthistory|redirect"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->EXCLUDED_SEGMENTS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    return-object v0
.end method

.method private isCustomShortChannelUrl([Ljava/lang/String;)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->EXCLUDED_SEGMENTS:Ljava/util/regex/Pattern;

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    nop

    :goto_1e
    return v1
.end method

.method private isHandle([Ljava/lang/String;)Z
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_f

    aget-object v0, p1, v1

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "/"

    :try_start_2
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isHTTP(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeURL(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isInvidiousURL(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isHooktubeURL(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_85

    :cond_22
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->isHandle([Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_82

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->isCustomShortChannelUrl([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_82

    :cond_39
    const-string v5, "user/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "channel/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "c/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_5a

    :cond_52
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "The given URL is not a channel, a user or a handle URL"

    invoke-direct {v0, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    :goto_5a
    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7a

    aget-object v5, v2, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7a
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v5, "The given ID is not a YouTube channel or user ID"

    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    :goto_82
    aget-object v0, v2, v6

    return-object v0

    :cond_85
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "The URL given is not a YouTube URL"

    invoke-direct {v0, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8d} :catch_8d

    :catch_8d
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse URL :"

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

    const-string v1, "https://www.youtube.com/"

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
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;
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
