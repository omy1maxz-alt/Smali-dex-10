.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PivotBarIconOnlyItemRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRendererOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

.field public static final ICON_FIELD_NUMBER:I = 0x5

.field public static final NAVIGATIONTYPE_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIVOTIDENTIFIER_FIELD_NUMBER:I = 0x1

.field public static final TARGETID_FIELD_NUMBER:I = 0x2

.field public static final TITLE_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

.field private navigationType_:I

.field private pivotIdentifier_:Ljava/lang/String;

.field private targetId_:Ljava/lang/String;

.field private title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;


# direct methods
.method public static bridge synthetic -$$Nest$mclearIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->clearIcon()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearNavigationType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->clearNavigationType()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPivotIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->clearPivotIdentifier()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearTargetId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->clearTargetId()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->clearTitle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->mergeIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->mergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetNavigationType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->setNavigationType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetNavigationTypeValue(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->setNavigationTypeValue(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPivotIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->setPivotIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPivotIdentifierBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->setPivotIdentifierBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTargetId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->setTargetId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTargetIdBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->setTargetIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->setTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 4946
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;-><init>()V

    .line 4949
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    .line 4950
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 4309
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4310
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    .line 4311
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->targetId_:Ljava/lang/String;

    return-void
.end method

.method private clearIcon()V
    .registers 2

    const/4 v0, 0x0

    .line 4545
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 4546
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    return-void
.end method

.method private clearNavigationType()V
    .registers 2

    const/4 v0, 0x0

    .line 4450
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->navigationType_:I

    return-void
.end method

.method private clearPivotIdentifier()V
    .registers 2

    .line 4349
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getPivotIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private clearTargetId()V
    .registers 2

    .line 4397
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getTargetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->targetId_:Ljava/lang/String;

    return-void
.end method

.method private clearTitle()V
    .registers 2

    const/4 v0, 0x0

    .line 4497
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    .line 4498
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 1

    .line 4955
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object v0
.end method

.method private mergeIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 4

    .line 4531
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4532
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    if-eqz v0, :cond_22

    .line 4533
    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 4534
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 4535
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->newBuilder(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    goto :goto_24

    .line 4537
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 4539
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    return-void
.end method

.method private mergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 4

    .line 4483
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4484
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    if-eqz v0, :cond_22

    .line 4485
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 4486
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    .line 4487
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    goto :goto_24

    .line 4489
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    .line 4491
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 1

    .line 4626
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 2

    .line 4629
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4602
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4609
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4565
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4572
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4614
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4621
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4589
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4596
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4552
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4559
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4577
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4584
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;",
            ">;"
        }
    .end annotation

    .line 4961
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 2

    .line 4522
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4523
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 4524
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    return-void
.end method

.method private setNavigationType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;)V
    .registers 2

    .line 4442
    invoke-virtual {p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->navigationType_:I

    return-void
.end method

.method private setNavigationTypeValue(I)V
    .registers 2

    .line 4434
    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->navigationType_:I

    return-void
.end method

.method private setPivotIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 4340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4342
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setPivotIdentifierBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 4357
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4358
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setTargetId(Ljava/lang/String;)V
    .registers 2

    .line 4388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4390
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->targetId_:Ljava/lang/String;

    return-void
.end method

.method private setTargetIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 4405
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4406
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->targetId_:Ljava/lang/String;

    return-void
.end method

.method private setTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 2

    .line 4474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4475
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    .line 4476
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 4892
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_58

    .line 4939
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 4932
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4917
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2f

    .line 4919
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    monitor-enter p1

    .line 4920
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2b

    .line 4922
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4925
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    .line 4927
    :cond_2b
    :goto_2b
    monitor-exit p1

    return-object p0

    :goto_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_28

    throw p0

    :cond_2f
    return-object p0

    .line 4914
    :pswitch_30  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0

    .line 4900
    :pswitch_33  #0x3
    const-string v0, "bitField0_"

    const-string v1, "pivotIdentifier_"

    const-string v2, "targetId_"

    const-string v3, "title_"

    const-string v4, "icon_"

    const-string v5, "navigationType_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 4908
    const-string p1, "\u0000\u0005\u0000\u0001\u0001\u0007\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0004ဉ\u0000\u0005ဉ\u0001\u0007\f"

    .line 4911
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4897
    :pswitch_4c  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 4894
    :pswitch_52  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;-><init>()V

    return-object p0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_4c  #00000002
        :pswitch_33  #00000003
        :pswitch_30  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 1

    .line 4515
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getNavigationType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;
    .registers 1

    .line 4426
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->navigationType_:I

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;

    move-result-object p0

    if-nez p0, :cond_a

    .line 4427
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;->UNRECOGNIZED:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;

    :cond_a
    return-object p0
.end method

.method public getNavigationTypeValue()I
    .registers 1

    .line 4418
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->navigationType_:I

    return p0
.end method

.method public getPivotIdentifier()Ljava/lang/String;
    .registers 1

    .line 4322
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    return-object p0
.end method

.method public getPivotIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 4331
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTargetId()Ljava/lang/String;
    .registers 1

    .line 4370
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->targetId_:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 4379
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->targetId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 1

    .line 4467
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasIcon()Z
    .registers 1

    .line 4508
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasTitle()Z
    .registers 2

    .line 4460
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
