.class Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;
.super Ljava/lang/Object;
.source "CustomDialogListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubViewDataContainer"
.end annotation


# instance fields
.field checkIcon:Landroid/widget/ImageView;

.field itemText:Landroid/widget/TextView;

.field placeholder:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter$SubViewDataContainer;-><init>()V

    return-void
.end method
