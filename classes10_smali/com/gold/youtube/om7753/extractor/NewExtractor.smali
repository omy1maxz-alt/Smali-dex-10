.class public final Lcom/gold/youtube/om7753/extractor/NewExtractor;
.super Ljava/lang/Object;
.source "NewPipe.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static downloader:Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

.field private static preferredContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

.field private static preferredLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->downloader:Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    return-object v0
.end method

.method public static getPreferredContentCountry()Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    if-nez v0, :cond_7

    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    :goto_9
    return-object v0
.end method

.method public static getPreferredLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    if-nez v0, :cond_7

    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    :goto_9
    return-object v0
.end method

.method public static getService(I)Lcom/gold/youtube/om7753/extractor/StreamingService;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/StreamingService;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/StreamingService;

    return-object v0
.end method

.method public static getServiceByUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService;
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/StreamingService;

    invoke-virtual {v1, p0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getLinkTypeByUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    move-result-object v2

    sget-object v3, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->NONE:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    if-eq v2, v3, :cond_1d

    return-object v1

    :cond_1d
    goto :goto_8

    :cond_1e
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No service can handle the url = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getServices()Ljava/util/List;
    .registers 1

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/gold/youtube/om7753/extractor/downloader/Downloader;)V
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->TAG:Ljava/lang/String;

    const-string v1, "Default init called"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->init(Lcom/gold/youtube/om7753/extractor/downloader/Downloader;Lcom/gold/youtube/om7753/extractor/localization/Localization;)V

    return-void
.end method

.method public static init(Lcom/gold/youtube/om7753/extractor/downloader/Downloader;Lcom/gold/youtube/om7753/extractor/localization/Localization;)V
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->TAG:Ljava/lang/String;

    const-string v1, "Default init called with localization={}"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    goto :goto_1d

    :cond_14
    new-instance v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->init(Lcom/gold/youtube/om7753/extractor/downloader/Downloader;Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;)V

    return-void
.end method

.method public static init(Lcom/gold/youtube/om7753/extractor/downloader/Downloader;Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;)V
    .registers 6

    sget-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->TAG:Ljava/lang/String;

    const-string v1, "Initializing with downloader={}, localization={}, country={}"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object p0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->downloader:Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    sput-object p1, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    sput-object p2, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    return-void
.end method

.method static synthetic lambda$getService$0(ILcom/gold/youtube/om7753/extractor/StreamingService;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getServiceId()I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$getService$1(I)Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no service with the id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getService$2(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/StreamingService;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getServiceInfo()Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getService$3(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no service with the name = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static setPreferredContentCountry(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;)V
    .registers 1

    sput-object p0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    return-void
.end method

.method public static setPreferredLocalization(Lcom/gold/youtube/om7753/extractor/localization/Localization;)V
    .registers 1

    sput-object p0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    return-void
.end method

.method public static setupLocalization(Lcom/gold/youtube/om7753/extractor/localization/Localization;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->setupLocalization(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;)V

    return-void
.end method

.method public static setupLocalization(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;)V
    .registers 4

    sput-object p0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredLocalization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    if-eqz p1, :cond_7

    sput-object p1, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    goto :goto_1f

    :cond_7
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    goto :goto_1d

    :cond_14
    new-instance v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    :goto_1d
    sput-object v0, Lcom/gold/youtube/om7753/extractor/NewExtractor;->preferredContentCountry:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    :goto_1f
    return-void
.end method
