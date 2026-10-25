.class public final synthetic Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public final synthetic f$1:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda2;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iput-object p2, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda2;->f$1:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda2;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda2;->f$1:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->$r8$lambda$GVBAOT05hnbCshbrweSZUh5rnN8(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
