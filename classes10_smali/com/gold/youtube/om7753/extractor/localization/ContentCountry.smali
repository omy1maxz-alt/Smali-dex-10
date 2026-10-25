.class public Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;
.super Ljava/lang/Object;
.source "ContentCountry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;


# instance fields
.field private final countryCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public static varargs listFrom([Ljava/lang/String;)Ljava/util/List;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    new-instance v4, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    invoke-direct {v4, v3}, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    iget-object v2, v0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
