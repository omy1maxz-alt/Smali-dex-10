.class public final Lcom/gold/extension/youtube/patches/spans/SanitizeVideoSubtitleFilter;
.super Lcom/gold/extension/shared/patches/spans/SpanFilter;
.source "SanitizeVideoSubtitleFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/spans/SpanFilter;-><init>()V

    .line 14
    new-instance v0, Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SANITIZE_VIDEO_SUBTITLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "|video_subtitle."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/patches/spans/SpanFilter;->addCallbacks([Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;)V

    return-void
.end method


# virtual methods
.method public skip(Ljava/lang/String;Landroid/text/SpannableString;Ljava/lang/Object;IIIZLcom/gold/extension/shared/patches/spans/SpanType;Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;)Z
    .registers 10

    if-eqz p7, :cond_13

    .line 26
    sget-object p1, Lcom/gold/extension/shared/patches/spans/SpanType;->IMAGE:Lcom/gold/extension/shared/patches/spans/SpanType;

    const/4 p3, 0x1

    if-ne p8, p1, :cond_b

    .line 27
    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/gold/extension/shared/patches/spans/SpanFilter;->hideImageSpan(Landroid/text/SpannableString;III)V

    return p3

    .line 29
    :cond_b
    sget-object p1, Lcom/gold/extension/shared/patches/spans/SpanType;->CUSTOM_CHARACTER_STYLE:Lcom/gold/extension/shared/patches/spans/SpanType;

    if-ne p8, p1, :cond_13

    .line 30
    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/gold/extension/shared/patches/spans/SpanFilter;->hideSpan(Landroid/text/SpannableString;III)V

    return p3

    :cond_13
    const/4 p0, 0x0

    return p0
.end method
