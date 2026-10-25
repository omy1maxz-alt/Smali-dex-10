.class public Lcom/gold/youtube/om7753/extractor/downloader/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private final dataToSend:[B

.field private final headers:Ljava/util/Map;

.field private final httpMethod:Ljava/lang/String;

.field private final localization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)V
    .registers 9

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->-$$Nest$fgethttpMethod(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->-$$Nest$fgeturl(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->-$$Nest$fgetheaders(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->-$$Nest$fgetdataToSend(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)[B

    move-result-object v4

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->-$$Nest$fgetlocalization(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v5

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->-$$Nest$fgetautomaticLocalizationHeader(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/downloader/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;Lcom/gold/youtube/om7753/extractor/downloader/Request-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request;-><init>(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Request\'s httpMethod is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    const-string v0, "Request\'s url is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->dataToSend:[B

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->localization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p3, :cond_25

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_25
    if-eqz p6, :cond_30

    if-eqz p5, :cond_30

    invoke-static {p5}, Lcom/gold/youtube/om7753/extractor/downloader/Request;->getHeadersFromLocalization(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->headers:Ljava/util/Map;

    return-void
.end method

.method public static getHeadersFromLocalization(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Ljava/util/Map;
    .registers 4

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, v0

    goto :goto_38

    :cond_17
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";q=0.9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_38
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public static newBuilder()Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dataToSend()[B
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->dataToSend:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4a

    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/gold/youtube/om7753/extractor/downloader/Request;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    iget-object v4, v2, Lcom/gold/youtube/om7753/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->url:Ljava/lang/String;

    iget-object v4, v2, Lcom/gold/youtube/om7753/extractor/downloader/Request;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->headers:Ljava/util/Map;

    iget-object v4, v2, Lcom/gold/youtube/om7753/extractor/downloader/Request;->headers:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->dataToSend:[B

    iget-object v4, v2, Lcom/gold/youtube/om7753/extractor/downloader/Request;->dataToSend:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->localization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    iget-object v4, v2, Lcom/gold/youtube/om7753/extractor/downloader/Request;->localization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    :goto_49
    return v0

    :cond_4a
    :goto_4a
    return v1
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->headers:Ljava/util/Map;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->localization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->dataToSend:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public headers()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public httpMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public localization()Lcom/gold/youtube/om7753/extractor/localization/Localization;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->localization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request;->url:Ljava/lang/String;

    return-object v0
.end method
