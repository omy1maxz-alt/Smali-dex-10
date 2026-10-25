.class public Lcom/gold/youtube/om7753/extractor/localization/Localization;
.super Ljava/lang/Object;
.source "Localization.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final languageCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/localization/Localization;

    const-string v1, "en"

    const-string v2, "GB"

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public static fromLocale(Ljava/util/Locale;)Lcom/gold/youtube/om7753/extractor/localization/Localization;
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromLocalizationCode(Ljava/lang/String;)Ljava/util/Optional;
    .registers 3

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/LocaleCompat;->forLanguageTag(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/localization/Localization$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/localization/Localization$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleFromThreeLetterCode(Ljava/lang/String;)Ljava/util/Locale;
    .registers 8

    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1f
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    return-object v2

    :cond_2c
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get Locale from this three letter language code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$listFrom$0(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a localization code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs listFrom([Ljava/lang/String;)Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_20

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->fromLocalizationCode(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/gold/youtube/om7753/extractor/localization/Localization$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/gold/youtube/om7753/extractor/localization/Localization$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/gold/youtube/om7753/extractor/localization/Localization;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/localization/Localization;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/gold/youtube/om7753/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/gold/youtube/om7753/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizationCode()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, ""

    goto :goto_1e

    :cond_9
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Localization["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
