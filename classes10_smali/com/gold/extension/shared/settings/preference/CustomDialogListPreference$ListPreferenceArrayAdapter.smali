.class public Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CustomDialogListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListPreferenceArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final entryValues:[Ljava/lang/CharSequence;

.field final layoutResourceId:I

.field selectedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 6

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 118
    iput p2, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->layoutResourceId:I

    .line 119
    iput-object p4, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->entryValues:[Ljava/lang/CharSequence;

    .line 120
    iput-object p5, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->selectedValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p3  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_45

    .line 130
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 131
    iget v1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->layoutResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 132
    new-instance p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;-><init>(Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference-IA;)V

    .line 133
    sget v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON_PLACEHOLDER:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;->placeholder:Landroid/view/View;

    .line 134
    sget v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_ITEM_TEXT:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;->itemText:Landroid/widget/TextView;

    .line 135
    sget v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;->checkIcon:Landroid/widget/ImageView;

    .line 136
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 137
    sget v2, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK_BOLD:I

    goto :goto_3e

    .line 138
    :cond_3c
    sget v2, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK:I

    .line 136
    :goto_3e
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4b

    .line 142
    :cond_45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;

    .line 145
    :goto_4b
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 146
    iget-object v2, p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;->itemText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;->itemText:Landroid/widget/TextView;

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->entryValues:[Ljava/lang/CharSequence;

    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->selectedValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 152
    iget-object p1, p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;->checkIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz p0, :cond_75

    move v2, v0

    goto :goto_76

    :cond_75
    move v2, v1

    :goto_76
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object p1, p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;->checkIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 154
    iget-object p1, p3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;->placeholder:Landroid/view/View;

    if-eqz p0, :cond_87

    move v0, v1

    :cond_87
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public setSelectedValue(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->selectedValue:Ljava/lang/String;

    return-void
.end method
