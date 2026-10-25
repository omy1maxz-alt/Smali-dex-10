.class Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;
.super Ljava/lang/Object;
.source "VotBottomSheet.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeSliderRow(Landroid/content/Context;Ljava/lang/String;Lcom/gold/extension/shared/settings/IntegerSetting;ILcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$config:Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

.field final synthetic val$onChanged:Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;

.field final synthetic val$valueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;Landroid/widget/TextView;Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;->val$config:Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;->val$valueView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;->val$onChanged:Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    if-eqz p3, :cond_18

    .line 659
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;->val$config:Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    invoke-static {p1, p2}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->progressToValue(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;I)I

    move-result p1

    .line 660
    iget-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;->val$valueView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;->val$config:Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    invoke-static {p1, p3}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->formatLabel(ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;->val$onChanged:Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;

    invoke-interface {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;->accept(I)V

    :cond_18
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 0
    return-void
.end method
