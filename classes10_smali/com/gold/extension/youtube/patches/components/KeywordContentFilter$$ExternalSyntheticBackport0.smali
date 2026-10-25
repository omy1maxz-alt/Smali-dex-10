.class public abstract synthetic Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    if-lez v0, :cond_17

    invoke-static {p0, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_17

    :cond_11
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_4

    :cond_17
    :goto_17
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
