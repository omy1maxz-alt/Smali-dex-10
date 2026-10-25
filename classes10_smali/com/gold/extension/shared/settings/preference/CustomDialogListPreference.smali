.class public Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;
.super Landroid/preference/ListPreference;
.source "CustomDialogListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;
    }
.end annotation


# static fields
.field public static final DRAWABLE_CHECKMARK:I

.field public static final DRAWABLE_CHECKMARK_BOLD:I

.field public static final ID_MORPHE_CHECK_ICON:I

.field public static final ID_MORPHE_CHECK_ICON_PLACEHOLDER:I

.field public static final ID_MORPHE_ITEM_TEXT:I

.field public static final LAYOUT_MORPHE_CUSTOM_LIST_ITEM_CHECKED:I


# instance fields
.field private highlightedEntriesForDialog:[Ljava/lang/CharSequence;

.field private staticSummary:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$NLGlhw2rbWEwDpcy6fnwAERS9do(Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->lambda$showDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hlfTA1qBVJufh1c_5iEmrdaiWyA(Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;[Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->lambda$showDialog$1([Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_check_icon"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON:I

    .line 36
    const-string v1, "youtube_check_icon_placeholder"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON_PLACEHOLDER:I

    .line 38
    const-string v1, "youtube_item_text"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_ITEM_TEXT:I

    .line 40
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_custom_list_item_checked"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->LAYOUT_MORPHE_CUSTOM_LIST_ITEM_CHECKED:I

    .line 42
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_settings_custom_checkmark"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK:I

    .line 44
    const-string v1, "youtube_settings_custom_checkmark_bold"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK_BOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 177
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->staticSummary:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->highlightedEntriesForDialog:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->staticSummary:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->highlightedEntriesForDialog:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->staticSummary:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->highlightedEntriesForDialog:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->staticSummary:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->highlightedEntriesForDialog:[Ljava/lang/CharSequence;

    return-void
.end method

.method private synthetic lambda$showDialog$0(Landroid/content/DialogInterface;)V
    .registers 2

    .line 230
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->clearHighlightedEntriesForDialog()V

    return-void
.end method

.method private synthetic lambda$showDialog$1([Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    .line 243
    aget-object p1, p1, p6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_27

    .line 245
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 248
    iget-object p4, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->staticSummary:Ljava/lang/String;

    if-nez p4, :cond_21

    .line 249
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p4

    if-eqz p4, :cond_21

    .line 250
    array-length p5, p4

    if-ge p6, p5, :cond_21

    .line 251
    aget-object p4, p4, p6

    invoke-virtual {p0, p4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    :cond_21
    invoke-virtual {p2, p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->setSelectedValue(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 260
    :cond_27
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->clearHighlightedEntriesForDialog()V

    .line 261
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public clearHighlightedEntriesForDialog()V
    .registers 2

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->highlightedEntriesForDialog:[Ljava/lang/CharSequence;

    return-void
.end method

.method public getEntriesForDialog()[Ljava/lang/CharSequence;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->highlightedEntriesForDialog:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getStaticSummary()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->staticSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->staticSummary:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 73
    :cond_5
    invoke-super {p0}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public setHighlightedEntriesForDialog([Ljava/lang/CharSequence;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->highlightedEntriesForDialog:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setStaticSummary(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->staticSummary:Ljava/lang/String;

    return-void
.end method

.method public showDialog(Landroid/os/Bundle;)V
    .registers 19

    move-object/from16 v0, p0

    .line 182
    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 184
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->getEntriesForDialog()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 185
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 188
    new-instance v11, Landroid/widget/ListView;

    invoke-direct {v11, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v2, 0x102000a

    .line 189
    invoke-virtual {v11, v2}, Landroid/view/View;->setId(I)V

    const/4 v12, 0x1

    .line 190
    invoke-virtual {v11, v12}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    move-object v2, v1

    .line 193
    new-instance v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;

    sget v3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->LAYOUT_MORPHE_CUSTOM_LIST_ITEM_CHECKED:I

    .line 198
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)V

    move-object v14, v1

    move-object v13, v5

    .line 200
    invoke-virtual {v11, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    if-eqz v1, :cond_4f

    .line 205
    array-length v3, v13

    move v4, v15

    :goto_37
    if-ge v4, v3, :cond_4f

    .line 206
    aget-object v5, v13, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 207
    invoke-virtual {v11, v4, v12}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 208
    invoke-virtual {v11, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_4f

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 217
    :cond_4f
    :goto_4f
    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_60

    :cond_5e
    const-string v1, ""

    :goto_60
    new-instance v7, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    .line 215
    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v1

    .line 228
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/Dialog;

    .line 230
    new-instance v3, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 233
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/widget/LinearLayout;

    .line 234
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v3, v4, v15, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 239
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-virtual {v1, v11, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v13, v14, v2}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;[Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v11, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 265
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method
