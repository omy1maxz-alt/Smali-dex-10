.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoActionBarData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIONBUTTONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;",
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
.method public static bridge synthetic -$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->addActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->addActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddAllActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;Ljava/lang/Iterable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->addAllActionButtons(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->clearActionButtons()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->removeActionButtons(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->setActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 14642
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;-><init>()V

    .line 14645
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    .line 14646
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 14287
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14288
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private addActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 3

    .line 14360
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14361
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->ensureActionButtonsIsMutable()V

    .line 14362
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 2

    .line 14350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14351
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->ensureActionButtonsIsMutable()V

    .line 14352
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14369
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->ensureActionButtonsIsMutable()V

    .line 14370
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearActionButtons()V
    .registers 2

    .line 14377
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureActionButtonsIsMutable()V
    .registers 3

    .line 14328
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14329
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 14331
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 1

    .line 14651
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 1

    .line 14464
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 2

    .line 14467
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14440
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14447
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14403
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14410
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14452
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14459
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14427
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14434
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14390
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14397
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14415
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14422
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;",
            ">;"
        }
    .end annotation

    .line 14657
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeActionButtons(I)V
    .registers 2

    .line 14383
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->ensureActionButtonsIsMutable()V

    .line 14384
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V
    .registers 3

    .line 14341
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14342
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->ensureActionButtonsIsMutable()V

    .line 14343
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 14593
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 14635
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 14628
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 14613
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 14615
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    monitor-enter p1

    .line 14616
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 14618
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 14621
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 14623
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

    .line 14610
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    return-object p0

    .line 14601
    :pswitch_32  #0x3
    const-string p0, "actionButtons_"

    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 14605
    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 14607
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 14598
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 14595
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;-><init>()V

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

    .line 14318
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    return-object p0
.end method

.method public getActionButtonsCount()I
    .registers 1

    .line 14311
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14297
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getActionButtonsOrBuilder(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtonsOrBuilder;
    .registers 2

    .line 14325
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14304
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->actionButtons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
