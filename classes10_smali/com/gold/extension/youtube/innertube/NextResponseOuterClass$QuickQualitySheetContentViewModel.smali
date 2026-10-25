.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickQualitySheetContentViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModelOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

.field public static final ENABLEPLAYERADAPTER_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITYFOOTER_FIELD_NUMBER:I = 0x8

.field public static final QUALITYHEADER_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private enablePlayerAdapter_:Z

.field private qualityFooter_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

.field private qualityHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;


# direct methods
.method public static bridge synthetic -$$Nest$mclearEnablePlayerAdapter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->clearEnablePlayerAdapter()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->clearQualityFooter()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->clearQualityHeader()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->mergeQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->mergeQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnablePlayerAdapter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->setEnablePlayerAdapter(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->setQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->setQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 12690
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;-><init>()V

    .line 12693
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    .line 12694
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12287
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearEnablePlayerAdapter()V
    .registers 2

    const/4 v0, 0x0

    .line 12409
    iput-boolean v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->enablePlayerAdapter_:Z

    return-void
.end method

.method private clearQualityFooter()V
    .registers 2

    const/4 v0, 0x0

    .line 12382
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityFooter_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    .line 12383
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    return-void
.end method

.method private clearQualityHeader()V
    .registers 2

    const/4 v0, 0x0

    .line 12334
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    .line 12335
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 1

    .line 12699
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object v0
.end method

.method private mergeQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V
    .registers 4

    .line 12368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12369
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityFooter_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    if-eqz v0, :cond_22

    .line 12370
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 12371
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityFooter_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    .line 12372
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityFooter_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    goto :goto_24

    .line 12374
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityFooter_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    .line 12376
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    return-void
.end method

.method private mergeQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)V
    .registers 4

    .line 12320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12321
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    if-eqz v0, :cond_22

    .line 12322
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 12323
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    .line 12324
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    goto :goto_24

    .line 12326
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    .line 12328
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 1

    .line 12489
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 2

    .line 12492
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12465
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12472
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12428
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12435
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12477
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12484
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12452
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12459
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12415
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12422
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12440
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12447
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;",
            ">;"
        }
    .end annotation

    .line 12705
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEnablePlayerAdapter(Z)V
    .registers 2

    .line 12402
    iput-boolean p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->enablePlayerAdapter_:Z

    return-void
.end method

.method private setQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V
    .registers 2

    .line 12359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12360
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityFooter_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    .line 12361
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    return-void
.end method

.method private setQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)V
    .registers 2

    .line 12311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12312
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    .line 12313
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 12638
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_54

    .line 12683
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 12676
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 12661
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 12663
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    monitor-enter p1

    .line 12664
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 12666
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12669
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 12671
    :cond_2a
    :goto_2a
    monitor-exit p1

    return-object p0

    :goto_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_28

    throw p0

    :cond_2e
    return-object p0

    .line 12658
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    return-object p0

    .line 12646
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "qualityHeader_"

    const-string p2, "qualityFooter_"

    const-string p3, "enablePlayerAdapter_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 12652
    const-string p1, "\u0000\u0003\u0000\u0001\u0001\t\u0003\u0000\u0000\u0000\u0001ဉ\u0000\bဉ\u0001\t\u0007"

    .line 12655
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12643
    :pswitch_47  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 12640
    :pswitch_4d  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;-><init>()V

    return-object p0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_47  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getEnablePlayerAdapter()Z
    .registers 1

    .line 12394
    iget-boolean p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->enablePlayerAdapter_:Z

    return p0
.end method

.method public getQualityFooter()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;
    .registers 1

    .line 12352
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityFooter_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getQualityHeader()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 1

    .line 12304
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->qualityHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasQualityFooter()Z
    .registers 1

    .line 12345
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasQualityHeader()Z
    .registers 2

    .line 12297
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
