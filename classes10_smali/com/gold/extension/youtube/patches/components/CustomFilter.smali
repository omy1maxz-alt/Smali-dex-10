.class public final Lcom/gold/extension/youtube/patches/components/CustomFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "CustomFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$EzG3mNEJE5xp11kTj0ou5wjK3dY([Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;)Ljava/lang/String;
    .registers 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using Custom filters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smshowInvalidSyntaxToast(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/components/CustomFilter;->showInvalidSyntaxToast(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 264
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 265
    invoke-static {}, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->parseCustomFilterGroups()Ljava/util/Collection;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x0

    .line 268
    new-array v1, v1, [Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;

    .line 269
    new-instance v1, Lcom/gold/extension/youtube/patches/components/CustomFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/patches/components/CustomFilter$$ExternalSyntheticLambda0;-><init>([Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 270
    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    :cond_21
    return-void
.end method

.method private static showInvalidSyntaxToast(Ljava/lang/String;)V
    .registers 2

    .line 87
    const-string v0, "youtube_custom_filter_toast_invalid_syntax"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 285
    check-cast p7, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;

    .line 288
    iget-boolean p0, p7, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->startsWith:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    if-eqz p9, :cond_a

    return p1

    .line 293
    :cond_a
    iget-object p0, p7, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->extraPathComponents:[Ljava/lang/String;

    array-length p2, p0

    move p6, p1

    :goto_e
    if-ge p6, p2, :cond_1c

    aget-object p8, p0, p6

    .line 294
    invoke-virtual {p4, p8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p8

    if-nez p8, :cond_19

    return p1

    :cond_19
    add-int/lit8 p6, p6, 0x1

    goto :goto_e

    .line 300
    :cond_1c
    iget-object p0, p7, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->accessibilitySearch:Lcom/gold/extension/shared/StringTrieSearch;

    if-eqz p0, :cond_27

    invoke-virtual {p0, p3}, Lcom/gold/extension/shared/StringTrieSearch;->matches(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    return p1

    .line 305
    :cond_27
    iget-object p0, p7, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->bufferSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    if-eqz p0, :cond_33

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/ByteTrieSearch;->matches(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_33

    :cond_32
    return p1

    :cond_33
    :goto_33
    const/4 p0, 0x1

    return p0
.end method
