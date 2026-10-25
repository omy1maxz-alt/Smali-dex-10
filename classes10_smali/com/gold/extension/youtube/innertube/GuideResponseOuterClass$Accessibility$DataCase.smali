.class public final enum Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;
.super Ljava/lang/Enum;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/AbstractMessageLite$InternalOneOfEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;",
        ">;",
        "Lcom/google/protobuf/AbstractMessageLite$InternalOneOfEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

.field public static final enum ACCESSIBILITYDATA:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

.field public static final enum DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;
    .registers 2

    .line 6184
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->ACCESSIBILITYDATA:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    sget-object v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    filled-new-array {v0, v1}, [Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 6186
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    const-string v1, "ACCESSIBILITYDATA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->ACCESSIBILITYDATA:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    .line 6187
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    const-string v1, "DATA_NOT_SET"

    invoke-direct {v0, v1, v3, v2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    .line 6184
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->$values()[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->$VALUES:[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

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

    .line 6189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6190
    iput p3, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;
    .registers 2

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 6202
    :cond_7
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->ACCESSIBILITYDATA:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    return-object p0

    .line 6203
    :cond_a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->DATA_NOT_SET:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6197
    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6184
    const-class v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;
    .registers 1

    .line 6184
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->$VALUES:[Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 1

    .line 6208
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->value:I

    return p0
.end method
