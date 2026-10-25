.class public final synthetic Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$Availability;


# instance fields
.field public final synthetic f$0:[Lcom/gold/extension/shared/settings/Setting$Availability;


# direct methods
.method public synthetic constructor <init>([Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda10;->f$0:[Lcom/gold/extension/shared/settings/Setting$Availability;

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda10;->f$0:[Lcom/gold/extension/shared/settings/Setting$Availability;

    invoke-static {p0}, Lcom/gold/extension/shared/settings/Setting;->$r8$lambda$mMgJCHtiii60nQI_Dwcd_slRLbI([Lcom/gold/extension/shared/settings/Setting$Availability;)Z

    move-result p0

    return p0
.end method
