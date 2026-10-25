.class public final synthetic Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda5;->f$0:I

    iput p2, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget v0, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda5;->f$0:I

    iget p0, p0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->$r8$lambda$dKsEjYTB9WL79MUo2oFkSBwVPvA(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
