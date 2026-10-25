.class Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$1;
.super Ljava/lang/Object;
.source "CustomPlaybackSpeedPatch.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->showModernCustomPlaybackSpeedDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$userSelectedSpeed:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$1;->val$userSelectedSpeed:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    if-eqz p3, :cond_14

    .line 377
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch$1;->val$userSelectedSpeed:Ljava/util/function/Function;

    invoke-static {}, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->-$$Nest$sfgetcustomPlaybackSpeedsMin()F

    move-result p1

    int-to-float p2, p2

    const/high16 p3, 0x42c80000  # 100.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
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
