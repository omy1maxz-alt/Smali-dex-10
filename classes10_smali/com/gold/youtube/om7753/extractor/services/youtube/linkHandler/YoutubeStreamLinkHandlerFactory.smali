.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;
.source "YoutubeStreamLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

.field private static final SUBPATHS:Ljava/util/List;

.field private static final YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    nop

    const-string v0, "^([a-zA-Z0-9_-]{11})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    nop

    const-string v1, "embed/"

    const-string v2, "live/"

    const-string v3, "shorts/"

    const-string v4, "watch/"

    const-string v5, "v/"

    const-string v6, "w/"

    invoke-static/range {v1 .. v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->SUBPATHS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;-><init>()V

    return-void
.end method

.method private static assertIsId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->extractId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "The given string is not a YouTube video ID"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extractId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0

    :cond_15
    return-object v0
.end method

.method private getIdFromSubpathsInPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->SUBPATHS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_25
    goto :goto_6

    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    move-object v0, p1

    const/4 v1, 0x2

    :try_start_2
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4e

    const-string v4, "vnd.youtube"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "vnd.youtube.launch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    :cond_1d
    invoke-virtual {v2}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->extractId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    return-object v5

    :cond_34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_4e

    :cond_49
    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4d
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_4d} :catch_4f

    return-object v1

    :cond_4e
    :goto_4e
    goto :goto_50

    :catch_4f
    move-exception v2

    :goto_50
    :try_start_50
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_54
    .catch Ljava/net/MalformedURLException; {:try_start_50 .. :try_end_54} :catch_347

    nop

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_68

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_68
    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isHTTP(Ljava/net/URL;)Z

    move-result v5

    if-eqz v5, :cond_31e

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeURL(Ljava/net/URL;)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeServiceURL(Ljava/net/URL;)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isHooktubeURL(Ljava/net/URL;)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isInvidiousURL(Ljava/net/URL;)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isY2ubeURL(Ljava/net/URL;)Z

    move-result v5

    if-nez v5, :cond_8e

    goto/16 :goto_31e

    :cond_8e
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->acceptUrl(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "Error: no suitable URL: "

    if-nez v5, :cond_307

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x6

    sparse-switch v8, :sswitch_data_350

    :cond_a6
    goto/16 :goto_246

    :sswitch_a8
    const-string v1, "YOUTUBE.COM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    move v1, v6

    goto/16 :goto_247

    :sswitch_b3
    const-string v1, "INVIDIOUS.SITE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x13

    goto/16 :goto_247

    :sswitch_bf
    const-string v1, "WWW.INVIDIO.US"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0xa

    goto/16 :goto_247

    :sswitch_cb
    const-string v1, "WWW.YOUTUBE-NOCOOKIE.COM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v1, 0x0

    goto/16 :goto_247

    :sswitch_d6
    const-string v1, "INVIDIOUS.SILKKY.CLOUD"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x1c

    goto/16 :goto_247

    :sswitch_e2
    const-string v1, "INVIDIOUS.BLAMEFRAN.NET"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x1f

    goto/16 :goto_247

    :sswitch_ee
    const-string v1, "INVIDIOUS.048596.XYZ"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x17

    goto/16 :goto_247

    :sswitch_fa
    const-string v1, "YTPRIVATE.COM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x1a

    goto/16 :goto_247

    :sswitch_106
    const-string v1, "REDIRECT.INVIDIOUS.IO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0xb

    goto/16 :goto_247

    :sswitch_112
    const-string v1, "INVIDIOUS.SNOPYTA.ORG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0xc

    goto/16 :goto_247

    :sswitch_11e
    const-string v1, "INVIDIOUS.FDN.FR"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x16

    goto/16 :goto_247

    :sswitch_12a
    const-string v1, "INVIDIO.US"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x8

    goto/16 :goto_247

    :sswitch_136
    const-string v1, "TUBE.CONNECT.CAFE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0xe

    goto/16 :goto_247

    :sswitch_142
    const-string v6, "WWW.YOUTUBE.COM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    goto/16 :goto_247

    :sswitch_14c
    const-string v1, "INVIDIOUS.EXONIP.DE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x1d

    goto/16 :goto_247

    :sswitch_158
    const-string v1, "Y.COM.CM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x23

    goto/16 :goto_247

    :sswitch_164
    const-string v1, "INVIDIOUS.MOOMOO.ME"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x20

    goto/16 :goto_247

    :sswitch_170
    const-string v1, "HOOKTUBE.COM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v1, 0x7

    goto/16 :goto_247

    :sswitch_17b
    const-string v1, "YOUTU.BE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    move v1, v9

    goto/16 :goto_247

    :sswitch_186
    const-string v1, "INVIDIOUS-US.KAVIN.ROCKS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x11

    goto/16 :goto_247

    :sswitch_192
    const-string v1, "INVIDIOUS.KAVIN.ROCKS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x10

    goto/16 :goto_247

    :sswitch_19e
    const-string v1, "MUSIC.YOUTUBE.COM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v1, 0x4

    goto/16 :goto_247

    :sswitch_1a9
    const-string v1, "YEWTU.BE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0xd

    goto/16 :goto_247

    :sswitch_1b5
    const-string v1, "INVIDIOU.SITE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x15

    goto/16 :goto_247

    :sswitch_1c1
    const-string v1, "INV.RIVERSIDE.ROCKS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x1e

    goto/16 :goto_247

    :sswitch_1cd
    const-string v1, "DEV.INVIDIO.US"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x9

    goto/16 :goto_247

    :sswitch_1d9
    const-string v1, "INVIDIOUS.NAMAZSO.EU"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x1b

    goto/16 :goto_247

    :sswitch_1e5
    const-string v1, "PIPED.KAVIN.ROCKS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x12

    goto :goto_247

    :sswitch_1f0
    const-string v1, "VID.PUFFYAN.US"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x19

    goto :goto_247

    :sswitch_1fb
    const-string v1, "YTB.TROM.TF"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x21

    goto :goto_247

    :sswitch_206
    const-string v1, "VID.MINT.LGBT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x14

    goto :goto_247

    :sswitch_211
    const-string v1, "YT.CYBERHOST.UK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x22

    goto :goto_247

    :sswitch_21c
    const-string v1, "M.YOUTUBE.COM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v1, 0x3

    goto :goto_247

    :sswitch_226
    const-string v1, "Y2U.BE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v1, 0x5

    goto :goto_247

    :sswitch_230
    const-string v1, "TUBUS.EDUVID.ORG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0xf

    goto :goto_247

    :sswitch_23b
    const-string v1, "INVIDIOUS.ZEE.LI"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v1, 0x18

    goto :goto_247

    :goto_246
    const/4 v1, -0x1

    :goto_247
    const-string v5, "v"

    packed-switch v1, :pswitch_data_3e2

    goto/16 :goto_2f0

    :pswitch_24e  #0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23
    const-string v1, "watch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_261

    invoke-static {v2, v5}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_261

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_261
    invoke-direct {p0, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getIdFromSubpathsInPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_268

    return-object v1

    :cond_268
    invoke-static {v2, v5}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_273

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_273
    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :pswitch_278  #0x5, 0x6
    invoke-static {v2, v5}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_283

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_283
    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :pswitch_288  #0x1, 0x2, 0x3, 0x4
    const-string v1, "attribution_link"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2cf

    const-string v1, "u"

    invoke-static {v2, v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://www.youtube.com"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6
    :try_end_2ad
    .catch Ljava/net/MalformedURLException; {:try_start_296 .. :try_end_2ad} :catch_2b7

    nop

    invoke-static {v6, v5}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catch_2b7
    move-exception v5

    new-instance v6, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2cf
    invoke-direct {p0, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getIdFromSubpathsInPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d6

    return-object v1

    :cond_2d6
    invoke-static {v2, v5}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :pswitch_2df  #0x0
    const-string v1, "embed/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f0

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2f0
    :goto_2f0
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_307
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31e
    :goto_31e
    const-string v1, "googleads.g.doubleclick.net"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33f

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/FoundAdException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: found ad: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/gold/youtube/om7753/extractor/exceptions/FoundAdException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33f
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v5, "The URL is not a YouTube URL"

    invoke-direct {v1, v5}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_347
    move-exception v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "The given URL is not valid"

    invoke-direct {v2, v3, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_350
    .sparse-switch
        -0x7e0457d1 -> :sswitch_23b
        -0x7c6e2400 -> :sswitch_230
        -0x6538c10b -> :sswitch_226
        -0x64efe82b -> :sswitch_21c
        -0x5f9cd1ca -> :sswitch_211
        -0x546db0a4 -> :sswitch_206
        -0x445441a3 -> :sswitch_1fb
        -0x440f3cd8 -> :sswitch_1f0
        -0x4119c053 -> :sswitch_1e5
        -0x314fe193 -> :sswitch_1d9
        -0x17b6192d -> :sswitch_1cd
        -0x17aaa2fa -> :sswitch_1c1
        -0xe92e56e -> :sswitch_1b5
        -0x76cc11b -> :sswitch_1a9
        -0x325c673 -> :sswitch_19e
        0x4620d47 -> :sswitch_192
        0x6257072 -> :sswitch_186
        0x627de31 -> :sswitch_17b
        0xa169d1a -> :sswitch_170
        0x11fd15e8 -> :sswitch_164
        0x1578e74c -> :sswitch_158
        0x1824f098 -> :sswitch_14c
        0x381ef9ff -> :sswitch_142
        0x3f4c7f6b -> :sswitch_136
        0x4949eb3a -> :sswitch_12a
        0x5fd0bae8 -> :sswitch_11e
        0x6249e462 -> :sswitch_112
        0x669117b6 -> :sswitch_106
        0x67acbc5b -> :sswitch_fa
        0x6c60ce27 -> :sswitch_ee
        0x6fdc1199 -> :sswitch_e2
        0x7731d328 -> :sswitch_d6
        0x7893fdf9 -> :sswitch_cb
        0x78a7f811 -> :sswitch_bf
        0x79548585 -> :sswitch_b3
        0x7bbb6bf6 -> :sswitch_a8
    .end sparse-switch

    :pswitch_data_3e2
    .packed-switch 0x0
        :pswitch_2df  #00000000
        :pswitch_288  #00000001
        :pswitch_288  #00000002
        :pswitch_288  #00000003
        :pswitch_288  #00000004
        :pswitch_278  #00000005
        :pswitch_278  #00000006
        :pswitch_24e  #00000007
        :pswitch_24e  #00000008
        :pswitch_24e  #00000009
        :pswitch_24e  #0000000a
        :pswitch_24e  #0000000b
        :pswitch_24e  #0000000c
        :pswitch_24e  #0000000d
        :pswitch_24e  #0000000e
        :pswitch_24e  #0000000f
        :pswitch_24e  #00000010
        :pswitch_24e  #00000011
        :pswitch_24e  #00000012
        :pswitch_24e  #00000013
        :pswitch_24e  #00000014
        :pswitch_24e  #00000015
        :pswitch_24e  #00000016
        :pswitch_24e  #00000017
        :pswitch_24e  #00000018
        :pswitch_24e  #00000019
        :pswitch_24e  #0000001a
        :pswitch_24e  #0000001b
        :pswitch_24e  #0000001c
        :pswitch_24e  #0000001d
        :pswitch_24e  #0000001e
        :pswitch_24e  #0000001f
        :pswitch_24e  #00000020
        :pswitch_24e  #00000021
        :pswitch_24e  #00000022
        :pswitch_24e  #00000023
    .end packed-switch
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/watch?v="

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
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_3} :catch_8
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    return v0

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    return v1

    :catch_8
    move-exception v0

    throw v0
.end method
