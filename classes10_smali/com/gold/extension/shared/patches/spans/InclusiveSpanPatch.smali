.class public final Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;
.super Ljava/lang/Object;
.source "InclusiveSpanPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;
    }
.end annotation


# static fields
.field private static final conversionContextThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final filters:[Lcom/gold/extension/shared/patches/spans/SpanFilter;

.field private static final searchTree:Lcom/gold/extension/shared/StringTrieSearch;


# direct methods
.method public static synthetic $r8$lambda$80DPT74hnje4_bIJ7I-5W2Fnpv8(Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;)Ljava/lang/String;
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Searching...\n\u200b\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hssUGgCghEKb5VuhjCz9CyIIez8(Ljava/lang/String;Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;)Ljava/lang/String;
    .registers 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " setSpan: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->spanType:Lcom/gold/extension/shared/patches/spans/SpanType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qdeGt-UOV7Po9VU9ahfNKPq0i8s()Ljava/lang/String;
    .registers 1

    .line 198
    const-string v0, "Spans filter failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$wR3RASGQyav_dx-mYHdQdqw_tXs(Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;Lcom/gold/extension/shared/patches/spans/SpanFilter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Z
    .registers 17

    .line 153
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p0, 0x0

    return p0

    .line 155
    :cond_8
    move-object/from16 p3, p6

    check-cast p3, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;

    .line 156
    iget-object v1, p3, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->conversionContext:Ljava/lang/String;

    iget-object v2, p3, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->spannableString:Landroid/text/SpannableString;

    iget-object v3, p3, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->span:Ljava/lang/Object;

    iget v4, p3, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->start:I

    iget v5, p3, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->end:I

    iget v6, p3, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->flags:I

    iget-boolean v7, p3, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->isWord:Z

    iget-object v8, p3, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->spanType:Lcom/gold/extension/shared/patches/spans/SpanType;

    move-object v9, p0

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/gold/extension/shared/patches/spans/SpanFilter;->skip(Ljava/lang/String;Landroid/text/SpannableString;Ljava/lang/Object;IIIZLcom/gold/extension/shared/patches/spans/SpanType;Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 160
    sget-object p1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEBUG_SPANNABLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 161
    new-instance p1, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2, p3}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_38
    return p0
.end method

.method public static synthetic $r8$lambda$yfomeAxK2MrQAOLzA912T0fCU7M()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->searchTree:Lcom/gold/extension/shared/StringTrieSearch;

    .line 137
    invoke-virtual {v1}, Lcom/gold/extension/shared/TrieSearch;->numberOfPatterns()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " conversion context filters ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Lcom/gold/extension/shared/TrieSearch;->getEstimatedMemorySize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " KB)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetSpanType(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/spans/SpanType;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->getSpanType(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/spans/SpanType;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetSpanType(Lcom/gold/extension/shared/patches/spans/SpanType;Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->getSpanType(Lcom/gold/extension/shared/patches/spans/SpanType;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 118
    new-instance v0, Lcom/gold/extension/shared/patches/spans/DummySpanFilter;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/spans/DummySpanFilter;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/gold/extension/shared/patches/spans/SpanFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->patch_getFilterArray()[Lcom/gold/extension/shared/patches/spans/SpanFilter;

    move-result-object v1

    sput-object v1, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->filters:[Lcom/gold/extension/shared/patches/spans/SpanFilter;

    .line 122
    new-instance v0, Lcom/gold/extension/shared/StringTrieSearch;

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/gold/extension/shared/StringTrieSearch;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->searchTree:Lcom/gold/extension/shared/StringTrieSearch;

    .line 128
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->conversionContextThreadLocal:Ljava/lang/ThreadLocal;

    .line 131
    array-length v0, v1

    :goto_22
    if-ge v2, v0, :cond_2e

    aget-object v3, v1, v2

    .line 132
    iget-object v4, v3, Lcom/gold/extension/shared/patches/spans/SpanFilter;->callbacks:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->filterUsingCallbacks(Lcom/gold/extension/shared/patches/spans/SpanFilter;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 135
    :cond_2e
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEBUG_SPANNABLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 136
    new-instance v0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterUsingCallbacks(Lcom/gold/extension/shared/patches/spans/SpanFilter;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/patches/spans/SpanFilter;",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;

    .line 146
    invoke-virtual {v1}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->includeInSearch()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_c

    .line 150
    :cond_1f
    iget-object v2, v1, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->filters:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_c

    aget-object v5, v2, v4

    .line 151
    sget-object v6, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->searchTree:Lcom/gold/extension/shared/StringTrieSearch;

    new-instance v7, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1, p0, v0}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;Lcom/gold/extension/shared/patches/spans/SpanFilter;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v7}, Lcom/gold/extension/shared/TrieSearch;->addPattern(Ljava/lang/Object;Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_36
    return-void
.end method

.method private static getSpanType(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/spans/SpanType;
    .registers 2

    .line 93
    instance-of v0, p0, Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_7

    .line 94
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanType;->CLICKABLE:Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object p0

    .line 95
    :cond_7
    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_e

    .line 96
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanType;->FOREGROUND_COLOR:Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object p0

    .line 97
    :cond_e
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_15

    .line 98
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanType;->ABSOLUTE_SIZE:Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object p0

    .line 99
    :cond_15
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    if-eqz v0, :cond_1c

    .line 100
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanType;->TYPEFACE:Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object p0

    .line 101
    :cond_1c
    instance-of v0, p0, Landroid/text/style/ImageSpan;

    if-eqz v0, :cond_23

    .line 102
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanType;->IMAGE:Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object p0

    .line 103
    :cond_23
    instance-of v0, p0, Landroid/text/style/LineHeightSpan;

    if-eqz v0, :cond_2a

    .line 104
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanType;->LINE_HEIGHT:Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object p0

    .line 105
    :cond_2a
    instance-of p0, p0, Luxk;

    if-eqz p0, :cond_31

    .line 106
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanType;->CUSTOM_CHARACTER_STYLE:Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object p0

    .line 108
    :cond_31
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanType;->UNKNOWN:Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object p0
.end method

.method private static getSpanType(Lcom/gold/extension/shared/patches/spans/SpanType;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 113
    sget-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->UNKNOWN:Lcom/gold/extension/shared/patches/spans/SpanType;

    if-ne p0, v0, :cond_d

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_d
    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanType;->type:Ljava/lang/String;

    return-object p0
.end method

.method private static patch_getFilterArray()[Lcom/gold/extension/shared/patches/spans/SpanFilter;
    .registers 3

    const/16 v1, 0x1

    new-array v2, v1, [Lcom/gold/extension/shared/patches/spans/SpanFilter;

    new-instance v0, Lcom/gold/extension/youtube/patches/spans/SanitizeVideoSubtitleFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/spans/SanitizeVideoSubtitleFilter;-><init>()V

    const/16 v1, 0x0

    aput-object v0, v2, v1

    return-object v2
.end method

.method private static returnEarly(Landroid/text/SpannableString;Ljava/lang/Object;III)Z
    .registers 14

    const/4 v1, 0x0

    .line 184
    :try_start_1
    sget-object v0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->conversionContextThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3e

    .line 185
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3e

    .line 189
    :cond_13
    new-instance v2, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;-><init>(Ljava/lang/String;Landroid/text/SpannableString;Ljava/lang/Object;III)V

    .line 192
    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEBUG_SPANNABLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_35

    .line 193
    new-instance p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda0;

    invoke-direct {p0, v2}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_35

    :catch_32
    move-exception v0

    move-object p0, v0

    goto :goto_3f

    .line 196
    :cond_35
    :goto_35
    sget-object p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->searchTree:Lcom/gold/extension/shared/StringTrieSearch;

    iget-object p1, v2, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->conversionContext:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_32

    return p0

    :cond_3e
    :goto_3e
    return v1

    .line 198
    :goto_3f
    new-instance p1, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static setConversionContext(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 178
    sget-object v0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->conversionContextThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static setSpan(Landroid/text/SpannableString;Ljava/lang/Object;III)V
    .registers 6

    .line 215
    invoke-static {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->returnEarly(Landroid/text/SpannableString;Ljava/lang/Object;III)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 218
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
