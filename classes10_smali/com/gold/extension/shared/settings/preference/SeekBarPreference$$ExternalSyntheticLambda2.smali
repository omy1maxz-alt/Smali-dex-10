.class public final synthetic Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Landroid/widget/SeekBar;

.field public final synthetic f$3:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;[ILandroid/widget/SeekBar;Landroid/widget/TextView;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;->f$0:Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;->f$2:Landroid/widget/SeekBar;

    iput-object p4, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;->f$3:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;->f$0:Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;->f$1:[I

    iget-object v2, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;->f$2:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;->f$3:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->$r8$lambda$GZqKYPpI3Gsp2IICzQg45fgBS84(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;[ILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    return-void
.end method
