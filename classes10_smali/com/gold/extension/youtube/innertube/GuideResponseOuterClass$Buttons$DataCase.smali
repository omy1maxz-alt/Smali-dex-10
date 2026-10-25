.class public final enum Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;
.super Ljava/lang/Enum;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/AbstractMessageLite$InternalOneOfEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;",
        ">;",
        "Lcom/google/protobuf/AbstractMessageLite$InternalOneOfEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

.field public static final enum BUTTONRENDERER:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

.field public static final enum DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

.field public static final enum TOPBARBUTTONRENDERER:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;
    .registers 3

    .line 1532
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->BUTTONRENDERER:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    sget-object v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->TOPBARBUTTONRENDERER:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    sget-object v2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 1534
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    const v1, 0x3e22b11

    const-string v2, "BUTTONRENDERER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->BUTTONRENDERER:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    .line 1535
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    const/4 v1, 0x1

    const v2, 0x13322bde

    const-string v4, "TOPBARBUTTONRENDERER"

    invoke-direct {v0, v4, v1, v2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->TOPBARBUTTONRENDERER:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    .line 1536
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    const-string v1, "DATA_NOT_SET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    .line 1532
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->$values()[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->$VALUES:[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

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

    .line 1538
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1539
    iput p3, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;
    .registers 2

    if-eqz p0, :cond_14

    const v0, 0x3e22b11

    if-eq p0, v0, :cond_11

    const v0, 0x13322bde

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 1552
    :cond_e
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->TOPBARBUTTONRENDERER:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    return-object p0

    .line 1551
    :cond_11
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->BUTTONRENDERER:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    return-object p0

    .line 1553
    :cond_14
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1546
    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1532
    const-class v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;
    .registers 1

    .line 1532
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->$VALUES:[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 1

    .line 1558
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->value:I

    return p0
.end method
