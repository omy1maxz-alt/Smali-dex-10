.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShowSheetCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommandOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

.field public static final PANELLOADINGSTRATEGY_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private panelLoadingStrategy_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;


# direct methods
.method public static bridge synthetic -$$Nest$mclearPanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->clearPanelLoadingStrategy()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->mergePanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->setPanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 4889
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;-><init>()V

    .line 4892
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    .line 4893
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearPanelLoadingStrategy()V
    .registers 2

    const/4 v0, 0x0

    .line 4685
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->panelLoadingStrategy_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    .line 4686
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 1

    .line 4898
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object v0
.end method

.method private mergePanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V
    .registers 4

    .line 4671
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4672
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->panelLoadingStrategy_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    if-eqz v0, :cond_22

    .line 4673
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 4674
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->panelLoadingStrategy_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    .line 4675
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->panelLoadingStrategy_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    goto :goto_24

    .line 4677
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->panelLoadingStrategy_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    .line 4679
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;
    .registers 1

    .line 4766
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;
    .registers 2

    .line 4769
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4742
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4749
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4705
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4712
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4754
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4761
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4729
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4736
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4692
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4699
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4717
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4724
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;",
            ">;"
        }
    .end annotation

    .line 4904
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V
    .registers 2

    .line 4662
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4663
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->panelLoadingStrategy_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    .line 4664
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 4840
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 4882
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 4875
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4860
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 4862
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    monitor-enter p1

    .line 4863
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 4865
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4868
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 4870
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

    .line 4857
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    return-object p0

    .line 4848
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "panelLoadingStrategy_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 4852
    const-string p1, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000"

    .line 4854
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4845
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 4842
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;-><init>()V

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

.method public getPanelLoadingStrategy()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;
    .registers 1

    .line 4655
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->panelLoadingStrategy_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasPanelLoadingStrategy()Z
    .registers 2

    .line 4648
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
