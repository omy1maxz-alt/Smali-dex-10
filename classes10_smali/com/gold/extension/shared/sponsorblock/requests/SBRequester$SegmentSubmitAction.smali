.class public final enum Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;
.super Ljava/lang/Enum;
.source "SBRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SegmentSubmitAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

.field public static final enum HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

.field public static final enum SKIP:Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;


# instance fields
.field public final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;
    .registers 2

    .line 36
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->SKIP:Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    filled-new-array {v0, v1}, [Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 37
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    const/4 v1, 0x0

    const-string v2, "poi"

    const-string v3, "HIGHLIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    .line 38
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    const/4 v1, 0x1

    const-string v2, "skip"

    const-string v3, "SKIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->SKIP:Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    .line 36
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->$values()[Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    const-class v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;
    .registers 1

    .line 36
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    return-object v0
.end method
