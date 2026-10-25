.class public Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;
.super Ljava/lang/Object;
.source "BaseSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwitchViewHolder"
.end annotation


# instance fields
.field summaryView:Landroid/widget/TextView;

.field switchWidget:Landroid/widget/Switch;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
