.class final enum Ljj$/util/stream/MatchOps$MatchKind;
.super Ljava/lang/Enum;
.source "MatchOps.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/util/stream/MatchOps$MatchKind;

.field public static final enum ALL:Ljj$/util/stream/MatchOps$MatchKind;

.field public static final enum ANY:Ljj$/util/stream/MatchOps$MatchKind;

.field public static final enum NONE:Ljj$/util/stream/MatchOps$MatchKind;


# instance fields
.field private final shortCircuitResult:Z

.field private final stopOnPredicateMatches:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetshortCircuitResult(Ljj$/util/stream/MatchOps$MatchKind;)Z
    .registers 1

    iget-boolean p0, p0, Ljj$/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstopOnPredicateMatches(Ljj$/util/stream/MatchOps$MatchKind;)Z
    .registers 1

    iget-boolean p0, p0, Ljj$/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljj$/util/stream/MatchOps$MatchKind;

    const-string v1, "ANY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Ljj$/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljj$/util/stream/MatchOps$MatchKind;->ANY:Ljj$/util/stream/MatchOps$MatchKind;

    new-instance v0, Ljj$/util/stream/MatchOps$MatchKind;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3, v2, v2}, Ljj$/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljj$/util/stream/MatchOps$MatchKind;->ALL:Ljj$/util/stream/MatchOps$MatchKind;

    new-instance v0, Ljj$/util/stream/MatchOps$MatchKind;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v2}, Ljj$/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljj$/util/stream/MatchOps$MatchKind;->NONE:Ljj$/util/stream/MatchOps$MatchKind;

    const/4 v0, 0x3

    new-array v0, v0, [Ljj$/util/stream/MatchOps$MatchKind;

    sget-object v1, Ljj$/util/stream/MatchOps$MatchKind;->ANY:Ljj$/util/stream/MatchOps$MatchKind;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/util/stream/MatchOps$MatchKind;->ALL:Ljj$/util/stream/MatchOps$MatchKind;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/util/stream/MatchOps$MatchKind;->NONE:Ljj$/util/stream/MatchOps$MatchKind;

    aput-object v1, v0, v4

    sput-object v0, Ljj$/util/stream/MatchOps$MatchKind;->$VALUES:[Ljj$/util/stream/MatchOps$MatchKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Ljj$/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    iput-boolean p4, p0, Ljj$/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/util/stream/MatchOps$MatchKind;
    .registers 2

    const-class v0, Ljj$/util/stream/MatchOps$MatchKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/MatchOps$MatchKind;

    return-object v0
.end method

.method public static values()[Ljj$/util/stream/MatchOps$MatchKind;
    .registers 1

    sget-object v0, Ljj$/util/stream/MatchOps$MatchKind;->$VALUES:[Ljj$/util/stream/MatchOps$MatchKind;

    invoke-virtual {v0}, [Ljj$/util/stream/MatchOps$MatchKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/util/stream/MatchOps$MatchKind;

    return-object v0
.end method
