.class public abstract Lorg/jsoup/internal/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"


# direct methods
.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_9
    const-string p0, ""

    :goto_b
    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    invoke-static {p0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0
.end method
