.class public final synthetic Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda6;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    iput p2, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda6;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    iget p0, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda6;->f$1:I

    invoke-static {v0, p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->$r8$lambda$TTrXI5cYmiXCZFpmsMX05mU1LBQ(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
