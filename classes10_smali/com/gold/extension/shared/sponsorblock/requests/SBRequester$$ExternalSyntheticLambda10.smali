.class public final synthetic Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public final synthetic f$1:Lcom/gold/extension/shared/settings/LongSetting;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;Lcom/gold/extension/shared/settings/LongSetting;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda10;->f$0:Lcom/gold/extension/shared/settings/BooleanSetting;

    iput-object p2, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda10;->f$1:Lcom/gold/extension/shared/settings/LongSetting;

    iput-wide p3, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda10;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda10;->f$0:Lcom/gold/extension/shared/settings/BooleanSetting;

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda10;->f$1:Lcom/gold/extension/shared/settings/LongSetting;

    iget-wide v2, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda10;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->$r8$lambda$ZCP3Y4k4RCqZ3uLTGDC98gym-3w(Lcom/gold/extension/shared/settings/BooleanSetting;Lcom/gold/extension/shared/settings/LongSetting;J)V

    return-void
.end method
