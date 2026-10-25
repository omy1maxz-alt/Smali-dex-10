.class public final Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ConfigResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalConfigGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroupOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAWCOLDCONFIGGROUP_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private rawColdConfigGroup_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;


# direct methods
.method public static bridge synthetic -$$Nest$mclearRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->clearRawColdConfigGroup()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->mergeRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->setRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 874
    new-instance v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;-><init>()V

    .line 877
    sput-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    .line 878
    const-class v1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 623
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearRawColdConfigGroup()V
    .registers 2

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->rawColdConfigGroup_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    .line 671
    iget v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 1

    .line 883
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object v0
.end method

.method private mergeRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V
    .registers 4

    .line 656
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->rawColdConfigGroup_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    if-eqz v0, :cond_22

    .line 658
    invoke-static {}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 659
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->rawColdConfigGroup_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    .line 660
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->newBuilder(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->rawColdConfigGroup_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    goto :goto_24

    .line 662
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->rawColdConfigGroup_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    .line 664
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;
    .registers 1

    .line 751
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;
    .registers 2

    .line 754
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 690
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 677
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 684
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 702
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 709
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;",
            ">;"
        }
    .end annotation

    .line 889
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V
    .registers 2

    .line 647
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->rawColdConfigGroup_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    .line 649
    iget p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 825
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 867
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 860
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 845
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 847
    const-class p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    monitor-enter p1

    .line 848
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 850
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 853
    sput-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 855
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

    .line 842
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    return-object p0

    .line 833
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "rawColdConfigGroup_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 837
    const-string p1, "\u0000\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000"

    .line 839
    sget-object p2, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 830
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;-><init>(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass-IA;)V

    return-object p0

    .line 827
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;-><init>()V

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

.method public getRawColdConfigGroup()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 1

    .line 640
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->rawColdConfigGroup_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasRawColdConfigGroup()Z
    .registers 2

    .line 633
    iget p0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
