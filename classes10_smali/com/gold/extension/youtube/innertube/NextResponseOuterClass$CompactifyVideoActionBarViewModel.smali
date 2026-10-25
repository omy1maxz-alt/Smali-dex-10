.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompactifyVideoActionBarViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModelOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIONBUTTONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->addActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->addActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddAllActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;Ljava/lang/Iterable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->addAllActionButtons(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->clearActionButtons()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->removeActionButtons(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->setActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 12045
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;-><init>()V

    .line 12048
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    .line 12049
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 11690
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11691
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private addActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 3

    .line 11763
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11764
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->ensureActionButtonsIsMutable()V

    .line 11765
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 2

    .line 11753
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11754
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->ensureActionButtonsIsMutable()V

    .line 11755
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllActionButtons(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;",
            ">;)V"
        }
    .end annotation

    .line 11772
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->ensureActionButtonsIsMutable()V

    .line 11773
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearActionButtons()V
    .registers 2

    .line 11780
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureActionButtonsIsMutable()V
    .registers 3

    .line 11731
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 11732
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 11734
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 1

    .line 12054
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 1

    .line 11867
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 2

    .line 11870
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11843
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11850
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11806
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11813
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11855
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11862
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11830
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11837
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11793
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11800
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11818
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11825
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;",
            ">;"
        }
    .end annotation

    .line 12060
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeActionButtons(I)V
    .registers 2

    .line 11786
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->ensureActionButtonsIsMutable()V

    .line 11787
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 3

    .line 11744
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11745
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->ensureActionButtonsIsMutable()V

    .line 11746
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 11996
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 12038
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 12031
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 12016
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 12018
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    monitor-enter p1

    .line 12019
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 12021
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12024
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 12026
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

    .line 12013
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    return-object p0

    .line 12004
    :pswitch_32  #0x3
    const-string p0, "actionButtons_"

    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 12008
    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 12010
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12001
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 11998
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;-><init>()V

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

.method public getActionButtons(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;
    .registers 2

    .line 11721
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    return-object p0
.end method

.method public getActionButtonsCount()I
    .registers 1

    .line 11714
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getActionButtonsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;",
            ">;"
        }
    .end annotation

    .line 11700
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getActionButtonsOrBuilder(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtonsOrBuilder;
    .registers 2

    .line 11728
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtonsOrBuilder;

    return-object p0
.end method

.method public getActionButtonsOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtonsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11707
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
