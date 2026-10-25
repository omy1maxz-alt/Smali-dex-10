.class public final enum Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;
.super Ljava/lang/Enum;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/AbstractMessageLite$InternalOneOfEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;",
        ">;",
        "Lcom/google/protobuf/AbstractMessageLite$InternalOneOfEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

.field public static final enum DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

.field public static final enum ITEMSECTIONRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

.field public static final enum SHELFRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

.field public static final enum SLIMVIDEOMETADATASECTIONRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;
    .registers 4

    .line 1639
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->SLIMVIDEOMETADATASECTIONRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    sget-object v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->ITEMSECTIONRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    sget-object v2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->SHELFRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    sget-object v3, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 1641
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    const v1, 0xce876fd

    const-string v2, "SLIMVIDEOMETADATASECTIONRENDERER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->SLIMVIDEOMETADATASECTIONRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    .line 1642
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    const/4 v1, 0x1

    const v2, 0x2fdec06

    const-string v4, "ITEMSECTIONRENDERER"

    invoke-direct {v0, v4, v1, v2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->ITEMSECTIONRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    .line 1643
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    const/4 v1, 0x2

    const v2, 0x31717cb

    const-string v4, "SHELFRENDERER"

    invoke-direct {v0, v4, v1, v2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->SHELFRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    .line 1644
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    const-string v1, "DATA_NOT_SET"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    .line 1639
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->$values()[Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->$VALUES:[Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
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
            "(I)V"
        }
    .end annotation

    .line 1646
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1647
    iput p3, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;
    .registers 2

    if-eqz p0, :cond_1c

    const v0, 0x2fdec06

    if-eq p0, v0, :cond_19

    const v0, 0x31717cb

    if-eq p0, v0, :cond_16

    const v0, 0xce876fd

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 1659
    :cond_13
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->SLIMVIDEOMETADATASECTIONRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    return-object p0

    .line 1661
    :cond_16
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->SHELFRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    return-object p0

    .line 1660
    :cond_19
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->ITEMSECTIONRENDERER:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    return-object p0

    .line 1662
    :cond_1c
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1654
    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->forNumber(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1639
    const-class v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;
    .registers 1

    .line 1639
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->$VALUES:[Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 1

    .line 1667
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->value:I

    return p0
.end method
