.class public abstract Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;
.super Ljava/lang/Object;
.source "BaseSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;,
        Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;,
        Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$GroupHeaderItem;
    }
.end annotation


# instance fields
.field highlightedSummary:Ljava/lang/CharSequence;

.field highlightedTitle:Ljava/lang/CharSequence;

.field highlightingApplied:Z

.field final navigationKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final navigationPath:Ljava/lang/String;

.field final preferenceType:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationPath:Ljava/lang/String;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    if-eqz p2, :cond_a

    goto :goto_c

    :cond_a
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_c
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationKeys:Ljava/util/List;

    .line 68
    iput-object p3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->preferenceType:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    .line 69
    const-string p1, ""

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    .line 70
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightingApplied:Z

    return-void
.end method

.method public static highlightSearchQuery(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;
    .registers 6

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    if-nez p1, :cond_9

    goto :goto_3d

    .line 83
    :cond_9
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppBackgroundColor()I

    move-result v0

    const v1, 0x3f733333  # 0.95f

    const v2, 0x3f99999a  # 1.2f

    .line 82
    invoke-static {v0, v1, v2}, Lcom/gold/extension/shared/Utils;->adjustColorBrightness(IFF)I

    move-result v0

    .line 84
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 85
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 88
    :goto_25
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 89
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    .line 90
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-ne p1, v2, :cond_36

    goto :goto_25

    :cond_36
    const/16 v3, 0x21

    .line 92
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_25

    :cond_3c
    return-object v0

    :cond_3d
    :goto_3d
    return-object p0
.end method


# virtual methods
.method public abstract applyHighlighting(Ljava/util/regex/Pattern;)V
.end method

.method public abstract clearHighlighting()V
.end method

.method public abstract matchesQuery(Ljava/lang/String;)Z
.end method
