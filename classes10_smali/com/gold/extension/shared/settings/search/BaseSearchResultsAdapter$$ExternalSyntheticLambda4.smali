.class public final synthetic Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->$r8$lambda$eOp30FlkL5vtrcaUiuh3zOsLZVc(Ljava/lang/Runnable;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
