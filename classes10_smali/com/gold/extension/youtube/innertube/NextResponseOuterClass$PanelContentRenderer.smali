.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PanelContentRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRendererOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

.field public static final PANELHEADER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private panelHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;


# direct methods
.method public static bridge synthetic -$$Nest$mclearPanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->clearPanelHeader()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->mergePanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->setPanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 5769
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;-><init>()V

    .line 5772
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    .line 5773
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5518
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearPanelHeader()V
    .registers 2

    const/4 v0, 0x0

    .line 5565
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->panelHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    .line 5566
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 1

    .line 5778
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object v0
.end method

.method private mergePanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)V
    .registers 4

    .line 5551
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5552
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->panelHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    if-eqz v0, :cond_22

    .line 5553
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 5554
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->panelHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    .line 5555
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->panelHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    goto :goto_24

    .line 5557
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->panelHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    .line 5559
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;
    .registers 1

    .line 5646
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;
    .registers 2

    .line 5649
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5622
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5629
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5585
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5592
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5634
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5641
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5609
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5616
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5572
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5579
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5597
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5604
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;",
            ">;"
        }
    .end annotation

    .line 5784
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)V
    .registers 2

    .line 5542
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5543
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->panelHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    .line 5544
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 5720
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 5762
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 5755
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 5740
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 5742
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    monitor-enter p1

    .line 5743
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 5745
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5748
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 5750
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

    .line 5737
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    return-object p0

    .line 5728
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "panelHeader_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 5732
    const-string p1, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000"

    .line 5734
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5725
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 5722
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;-><init>()V

    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_43  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getPanelHeader()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;
    .registers 1

    .line 5535
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->panelHeader_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasPanelHeader()Z
    .registers 2

    .line 5528
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
