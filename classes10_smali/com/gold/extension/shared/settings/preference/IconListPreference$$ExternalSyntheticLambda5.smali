.class public final synthetic Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/IconListPreference;

.field public final synthetic f$1:[Ljava/lang/CharSequence;

.field public final synthetic f$2:Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;

.field public final synthetic f$3:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/IconListPreference;[Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;Landroid/app/Dialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;->f$0:Lcom/gold/extension/shared/settings/preference/IconListPreference;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;->f$2:Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;

    iput-object p4, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;->f$3:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;->f$0:Lcom/gold/extension/shared/settings/preference/IconListPreference;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;->f$2:Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;

    iget-object v3, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;->f$3:Landroid/app/Dialog;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->$r8$lambda$x8DHJfPAQCsvwGgnp8zcK26ARAM(Lcom/gold/extension/shared/settings/preference/IconListPreference;[Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
