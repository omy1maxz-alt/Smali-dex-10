.class public final synthetic Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;->$r8$lambda$VLg2ny90cMgcl63Y2EjA_lRNCHY(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/VolumeAndBrightnessScrollerImpl;DDI)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
