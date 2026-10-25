.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlimVideoMetadataSectionRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRendererOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TERTIARYCONTENTS_FIELD_NUMBER:I = 0x1

.field public static final VIDEOID_FIELD_NUMBER:I = 0x2


# instance fields
.field private tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;"
        }
    .end annotation
.end field

.field private videoId_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$maddAllTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;Ljava/lang/Iterable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->addAllTertiaryContents(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->addTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->addTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->clearTertiaryContents()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearVideoId(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->clearVideoId()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->removeTertiaryContents(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->setTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVideoId(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->setVideoId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVideoIdBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->setVideoIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 2664
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;-><init>()V

    .line 2667
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    .line 2668
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2209
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2210
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2211
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->videoId_:Ljava/lang/String;

    return-void
.end method

.method private addAllTertiaryContents(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;)V"
        }
    .end annotation

    .line 2292
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2293
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 3

    .line 2283
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2284
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2285
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 2

    .line 2273
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2274
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2275
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearTertiaryContents()V
    .registers 2

    .line 2300
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearVideoId()V
    .registers 2

    .line 2345
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getVideoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->videoId_:Ljava/lang/String;

    return-void
.end method

.method private ensureTertiaryContentsIsMutable()V
    .registers 3

    .line 2251
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2252
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2254
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 1

    .line 2673
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 1

    .line 2435
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 2

    .line 2438
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2411
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2418
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2374
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2381
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2423
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2430
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2398
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2405
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2361
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2368
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2386
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2393
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;",
            ">;"
        }
    .end annotation

    .line 2679
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTertiaryContents(I)V
    .registers 2

    .line 2306
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2307
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 3

    .line 2264
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2265
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2266
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setVideoId(Ljava/lang/String;)V
    .registers 2

    .line 2336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2338
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->videoId_:Ljava/lang/String;

    return-void
.end method

.method private setVideoIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 2353
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2354
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->videoId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2613
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_52

    .line 2657
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 2650
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2635
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 2637
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    monitor-enter p1

    .line 2638
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 2640
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2643
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 2645
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

    .line 2632
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0

    .line 2621
    :pswitch_32  #0x3
    const-string p0, "tertiaryContents_"

    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    const-string p2, "videoId_"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 2626
    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002Ȉ"

    .line 2629
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2618
    :pswitch_45  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 2615
    :pswitch_4b  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;-><init>()V

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

.method public getTertiaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2

    .line 2241
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public getTertiaryContentsCount()I
    .registers 1

    .line 2234
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTertiaryContentsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;"
        }
    .end annotation

    .line 2220
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getTertiaryContentsOrBuilder(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContentsOrBuilder;
    .registers 2

    .line 2248
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContentsOrBuilder;

    return-object p0
.end method

.method public getTertiaryContentsOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContentsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2227
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getVideoId()Ljava/lang/String;
    .registers 1

    .line 2318
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->videoId_:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 2327
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->videoId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
