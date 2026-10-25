.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElementOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTIES_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private properties_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

.field private type_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;


# direct methods
.method public static bridge synthetic -$$Nest$mclearProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->clearProperties()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->clearType()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->mergeProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->mergeType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->setProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->setType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 6758
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;-><init>()V

    .line 6761
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    .line 6762
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6410
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearProperties()V
    .registers 2

    const/4 v0, 0x0

    .line 6505
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->properties_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    .line 6506
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    return-void
.end method

.method private clearType()V
    .registers 2

    const/4 v0, 0x0

    .line 6457
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->type_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    .line 6458
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 1

    .line 6767
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object v0
.end method

.method private mergeProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V
    .registers 4

    .line 6491
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6492
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->properties_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    if-eqz v0, :cond_22

    .line 6493
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 6494
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->properties_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    .line 6495
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->properties_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    goto :goto_24

    .line 6497
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->properties_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    .line 6499
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    return-void
.end method

.method private mergeType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V
    .registers 4

    .line 6443
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6444
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->type_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    if-eqz v0, :cond_22

    .line 6445
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 6446
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->type_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    .line 6447
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->type_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    goto :goto_24

    .line 6449
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->type_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    .line 6451
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 1

    .line 6586
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 2

    .line 6589
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6562
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6569
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6525
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6532
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6574
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6581
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6549
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6556
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6512
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6519
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6537
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6544
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;",
            ">;"
        }
    .end annotation

    .line 6773
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V
    .registers 2

    .line 6482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6483
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->properties_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    .line 6484
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    return-void
.end method

.method private setType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V
    .registers 2

    .line 6434
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6435
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->type_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    .line 6436
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 6707
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_52

    .line 6751
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 6744
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 6729
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 6731
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    monitor-enter p1

    .line 6732
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 6734
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6737
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 6739
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

    .line 6726
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    return-object p0

    .line 6715
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "type_"

    const-string p2, "properties_"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 6720
    const-string p1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001"

    .line 6723
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6712
    :pswitch_45  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 6709
    :pswitch_4b  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;-><init>()V

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_45  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;
    .registers 1

    .line 6475
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->properties_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 1

    .line 6427
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->type_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasProperties()Z
    .registers 1

    .line 6468
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasType()Z
    .registers 2

    .line 6420
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
