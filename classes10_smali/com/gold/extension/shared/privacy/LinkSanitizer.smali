.class public Lcom/gold/extension/shared/privacy/LinkSanitizer;
.super Ljava/lang/Object;
.source "LinkSanitizer.java"


# static fields
.field private static final parametersToRemove:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final videoIdParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RpIRWPaGKy-pM8Vg9UftG-HLrn8(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sanitized URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ahqbB3JP-yFoEaK0_5QFM_vY5ys(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replaceWithShortenedURL failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mZ_e-pmoU8XF3oCkqYxXHqizyC0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "returnSanitizedURLFromURI failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 17
    const-string v0, "is"

    const-string v1, "feature"

    const-string v2, "si"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/privacy/LinkSanitizer;->parametersToRemove:Ljava/util/Collection;

    .line 22
    const-string v0, "w"

    const-string v1, "s"

    const-string v2, "v"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/privacy/LinkSanitizer;->videoIdParameters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replaceWithShortenedURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 60
    :try_start_0
    const-string v0, "/sharing/invite/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b9

    const-string v0, "/post/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_b9

    .line 63
    :cond_12
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_3f

    if-nez v2, :cond_22

    goto/16 :goto_b9

    :cond_22
    const/4 v2, 0x0

    .line 71
    const-string v3, ""

    move v4, v2

    move-object v5, v3

    :goto_27
    const/4 v6, 0x3

    if-gt v4, v6, :cond_74

    if-eqz v4, :cond_5e

    const/4 v5, 0x1

    if-eq v4, v5, :cond_51

    const/4 v6, 0x2

    if-eq v4, v6, :cond_44

    .line 77
    :try_start_32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_42

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_6a

    :catch_3f
    move-exception v0

    goto/16 :goto_ba

    :cond_42
    move-object v5, v3

    goto :goto_6a

    .line 76
    :cond_44
    sget-object v5, Lcom/gold/extension/shared/privacy/LinkSanitizer;->videoIdParameters:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6a

    .line 75
    :cond_51
    sget-object v6, Lcom/gold/extension/shared/privacy/LinkSanitizer;->videoIdParameters:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6a

    .line 74
    :cond_5e
    sget-object v5, Lcom/gold/extension/shared/privacy/LinkSanitizer;->videoIdParameters:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    :goto_6a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    goto :goto_74

    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 84
    :cond_74
    :goto_74
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    .line 86
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "youtu.be"

    .line 87
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/4 v2, 0x4

    if-ge v4, v2, :cond_b9

    .line 90
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    sget-object v4, Lcom/gold/extension/shared/privacy/LinkSanitizer;->videoIdParameters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    goto :goto_94

    .line 95
    :cond_a9
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_94

    .line 97
    :cond_b1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_b9} :catch_3f

    :cond_b9
    :goto_b9
    return-object p0

    .line 102
    :goto_ba
    new-instance v1, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static returnSanitizedURLFromURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 26
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 29
    :try_start_4
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 31
    sget-object v2, Lcom/gold/extension/shared/privacy/LinkSanitizer;->parametersToRemove:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 32
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    sget-object v4, Lcom/gold/extension/shared/privacy/LinkSanitizer;->parametersToRemove:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 34
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_38

    :catch_48
    move-exception v0

    goto :goto_63

    .line 43
    :cond_4a
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sharing/invite/.+?\\?[a-zA-Z]="

    const-string v3, "watch?v="

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1}, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda2;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_62} :catch_48

    return-object v1

    .line 53
    :goto_63
    new-instance v1, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method
