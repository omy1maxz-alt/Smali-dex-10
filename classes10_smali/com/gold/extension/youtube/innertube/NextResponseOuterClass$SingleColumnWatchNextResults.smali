.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleColumnWatchNextResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResultsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARYRESULTS_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private primaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;


# direct methods
.method public static bridge synthetic -$$Nest$mclearPrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->clearPrimaryResults()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->mergePrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->setPrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 875
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;-><init>()V

    .line 878
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    .line 879
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 624
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearPrimaryResults()V
    .registers 2

    const/4 v0, 0x0

    .line 671
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->primaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    .line 672
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 1

    .line 884
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object v0
.end method

.method private mergePrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V
    .registers 4

    .line 657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->primaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    if-eqz v0, :cond_22

    .line 659
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 660
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->primaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    .line 661
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->primaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    goto :goto_24

    .line 663
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->primaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    .line 665
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;
    .registers 1

    .line 752
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;
    .registers 2

    .line 755
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 691
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 698
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 678
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 685
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 703
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 710
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;",
            ">;"
        }
    .end annotation

    .line 890
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V
    .registers 2

    .line 648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->primaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    .line 650
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 826
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 868
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 861
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 846
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 848
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    monitor-enter p1

    .line 849
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 851
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 854
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 856
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

    .line 843
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    return-object p0

    .line 834
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "primaryResults_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 838
    const-string p1, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000"

    .line 840
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 831
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 828
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;-><init>()V

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

.method public getPrimaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 1

    .line 641
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->primaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasPrimaryResults()Z
    .registers 2

    .line 634
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
