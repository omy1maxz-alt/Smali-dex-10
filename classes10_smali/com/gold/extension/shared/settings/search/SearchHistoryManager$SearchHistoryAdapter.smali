.class public Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/search/SearchHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchHistoryAdapter"
.end annotation


# instance fields
.field protected final container:Landroid/widget/LinearLayout;

.field protected final history:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final inflater:Landroid/view/LayoutInflater;

.field protected final onSelectHistoryItemListener:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;

.field final synthetic this$0:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;


# direct methods
.method public static synthetic $r8$lambda$5EHUH0DRFTP6n4JGO7iduNLeFAI(Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->lambda$notifyDataSetChanged$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ml_wAqX9SF5BQkB1Jwe9Y6V0-ko(Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->lambda$notifyDataSetChanged$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFecj7vvp1qraG1CibhITLnZRJo(Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->lambda$notifyDataSetChanged$2(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/gold/extension/shared/settings/search/SearchHistoryManager;Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/Collection;Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
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
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;",
            ")V"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->this$0:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p4, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->history:Ljava/util/Collection;

    .line 325
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 326
    iput-object p3, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->container:Landroid/widget/LinearLayout;

    .line 327
    iput-object p5, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->onSelectHistoryItemListener:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;

    return-void
.end method

.method private synthetic lambda$notifyDataSetChanged$0(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 339
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->onSelectHistoryItemListener:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;

    invoke-interface {p0, p1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;->onSelectHistoryItem(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$notifyDataSetChanged$1(Ljava/lang/String;)V
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->this$0:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    invoke-virtual {v0, p1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->removeSearchQuery(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->remove(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$notifyDataSetChanged$2(Ljava/lang/String;Landroid/view/View;)V
    .registers 5

    .line 359
    iget-object p2, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->this$0:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    const-string v0, "youtube_settings_search_remove_message"

    .line 361
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2, p1, v0, v1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->createAndShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->history:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 386
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->history:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 378
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public notifyDataSetChanged()V
    .registers 7

    .line 334
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 335
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->history:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->-$$Nest$sfgetLAYOUT_MORPHE_PREFERENCE_SEARCH_HISTORY_ITEM()I

    move-result v3

    iget-object v4, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->container:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 339
    new-instance v3, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-static {}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->-$$Nest$sfgetID_HISTORY_ICON()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 343
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 344
    invoke-static {}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->-$$Nest$sfgetID_SEARCH_ARROW_TIME_ICON_BOLD()I

    move-result v4

    goto :goto_45

    .line 345
    :cond_41
    invoke-static {}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->-$$Nest$sfgetID_SEARCH_ARROW_TIME_ICON()I

    move-result v4

    .line 343
    :goto_45
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    invoke-static {}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->-$$Nest$sfgetID_HISTORY_TEXT()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 349
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-static {}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->-$$Nest$sfgetID_DELETE_ICON()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 354
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 355
    invoke-static {}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->-$$Nest$sfgetID_SEARCH_REMOVE_ICON_BOLD()I

    move-result v4

    goto :goto_6e

    .line 356
    :cond_6a
    invoke-static {}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->-$$Nest$sfgetID_SEARCH_REMOVE_ICON()I

    move-result v4

    .line 354
    :goto_6e
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    new-instance v4, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_b

    :cond_7f
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->history:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->history:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 396
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->this$0:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showSearchHistory()V

    return-void

    .line 398
    :cond_13
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method
