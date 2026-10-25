.class Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VideoQualityDialogButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomQualityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private selectedPosition:I


# direct methods
.method public static bridge synthetic -$$Nest$msetSelectedPosition(Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;->setSelectedPosition(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, -0x1

    .line 370
    iput p1, p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;->selectedPosition:I

    return-void
.end method

.method private setSelectedPosition(I)V
    .registers 2

    .line 377
    iput p1, p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;->selectedPosition:I

    .line 378
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_37

    .line 387
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->LAYOUT_MORPHE_CUSTOM_LIST_ITEM_CHECKED:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 392
    new-instance p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;-><init>(Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton-IA;)V

    .line 393
    sget v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    .line 394
    sget v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON_PLACEHOLDER:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;->placeholder:Landroid/view/View;

    .line 395
    sget v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_ITEM_TEXT:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 396
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3d

    .line 398
    :cond_37
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;

    .line 401
    :goto_3d
    iget-object v1, p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v1, p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 403
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_55

    .line 404
    :cond_53
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 402
    :goto_55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 405
    iget p0, p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;->selectedPosition:I

    if-ne p1, p0, :cond_5e

    const/4 p0, 0x1

    goto :goto_5f

    :cond_5e
    move p0, v0

    .line 406
    :goto_5f
    iget-object p1, p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz p0, :cond_66

    goto :goto_67

    :cond_66
    move v0, v1

    :goto_67
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object p1, p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;->placeholder:Landroid/view/View;

    if-eqz p0, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v1, 0x4

    :goto_70
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object p0, p3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 409
    sget p1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK_BOLD:I

    goto :goto_80

    .line 410
    :cond_7e
    sget p1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK:I

    .line 408
    :goto_80
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method
