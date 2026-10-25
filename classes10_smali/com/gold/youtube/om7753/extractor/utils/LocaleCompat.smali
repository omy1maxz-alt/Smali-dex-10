.class public final Lcom/gold/youtube/om7753/extractor/utils/LocaleCompat;
.super Ljava/lang/Object;
.source "LocaleCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forLanguageTag(Ljava/lang/String;)Ljava/util/Optional;
    .registers 7

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_44

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v3, :cond_23

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    aget-object v4, v0, v5

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_23
    array-length v1, v0

    if-le v1, v5, :cond_34

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_34
    array-length v1, v0

    if-ne v1, v5, :cond_43

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_43
    goto :goto_84

    :cond_44
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v3, :cond_63

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    aget-object v4, v0, v5

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_63
    array-length v1, v0

    if-le v1, v5, :cond_74

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_74
    array-length v1, v0

    if-ne v1, v5, :cond_83

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_83
    nop

    :goto_84
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_89
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
