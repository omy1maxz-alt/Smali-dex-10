.class Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;
.super Ljava/lang/Object;
.source "BaseSearchResultsAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->navigateAndScrollToPreference(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isScrolling:Z

.field final synthetic this$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

.field final synthetic val$fallback:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$targetPosition:I


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/widget/ListView;Landroid/os/Handler;Ljava/lang/Runnable;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->this$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->val$fallback:Ljava/lang/Runnable;

    iput p5, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->val$targetPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 361
    iput-boolean p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->isScrolling:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    .line 367
    :cond_6
    iput-boolean p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->isScrolling:Z

    :cond_8
    if-nez p2, :cond_27

    .line 369
    iget-boolean p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->isScrolling:Z

    if-eqz p1, :cond_27

    const/4 p1, 0x0

    .line 371
    iput-boolean p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->isScrolling:Z

    .line 372
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->val$listView:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 373
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->val$handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->val$fallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->this$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    iget-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->val$listView:Landroid/widget/ListView;

    iget p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;->val$targetPosition:I

    invoke-virtual {p1, p2, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->highlightPreferenceAtPosition(Landroid/widget/ListView;I)V

    :cond_27
    return-void
.end method
