.class final enum Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
.super Ljava/lang/Enum;
.source "StreamSpliterators.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

.field public static final enum MAYBE_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

.field public static final enum NO_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

.field public static final enum UNLIMITED:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const-string v1, "NO_MORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    new-instance v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const-string v1, "MAYBE_MORE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    new-instance v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const-string v1, "UNLIMITED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    sget-object v1, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    aput-object v1, v0, v4

    sput-object v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->$VALUES:[Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .registers 2

    const-class v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object v0
.end method

.method public static values()[Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .registers 1

    sget-object v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->$VALUES:[Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    invoke-virtual {v0}, [Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object v0
.end method
