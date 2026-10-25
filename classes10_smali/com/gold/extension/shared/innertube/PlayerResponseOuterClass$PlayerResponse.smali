.class public final Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlayerResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;",
        ">;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYABILITY_STATUS_FIELD_NUMBER:I = 0x2

.field public static final STREAMING_DATA_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private playabilityStatus_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

.field private streamingData_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;


# direct methods
.method public static bridge synthetic -$$Nest$mclearPlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->clearPlayabilityStatus()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->clearStreamingData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->mergePlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->mergeStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->setPlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->setStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 557
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-direct {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;-><init>()V

    .line 560
    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    .line 561
    const-class v1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearPlayabilityStatus()V
    .registers 2

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->playabilityStatus_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    .line 257
    iget v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    return-void
.end method

.method private clearStreamingData()V
    .registers 2

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->streamingData_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 305
    iget v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 1

    .line 566
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object v0
.end method

.method private mergePlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V
    .registers 4

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    iget-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->playabilityStatus_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    if-eqz v0, :cond_22

    .line 244
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 245
    iget-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->playabilityStatus_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    .line 246
    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->newBuilder(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->playabilityStatus_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    goto :goto_24

    .line 248
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->playabilityStatus_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    .line 250
    :goto_24
    iget p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    return-void
.end method

.method private mergeStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V
    .registers 4

    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    iget-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->streamingData_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    if-eqz v0, :cond_22

    .line 292
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 293
    iget-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->streamingData_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 294
    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->newBuilder(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->streamingData_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    goto :goto_24

    .line 296
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->streamingData_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 298
    :goto_24
    iget p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 1

    .line 385
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 2

    .line 388
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;",
            ">;"
        }
    .end annotation

    .line 572
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V
    .registers 2

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->playabilityStatus_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    .line 235
    iget p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    return-void
.end method

.method private setStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V
    .registers 2

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->streamingData_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 283
    iget p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 506
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_52

    .line 550
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 543
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 528
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 530
    const-class p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    monitor-enter p1

    .line 531
    :try_start_1a
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 533
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 536
    sput-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 538
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

    .line 525
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    return-object p0

    .line 514
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "playabilityStatus_"

    const-string p2, "streamingData_"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 519
    const-string p1, "\u0000\u0002\u0000\u0001\u0002\u0004\u0002\u0000\u0000\u0000\u0002ဉ\u0000\u0004ဉ\u0001"

    .line 522
    sget-object p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 511
    :pswitch_45  #0x2
    new-instance p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;-><init>(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass-IA;)V

    return-object p0

    .line 508
    :pswitch_4b  #0x1
    new-instance p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;-><init>()V

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

.method public getPlayabilityStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->playabilityStatus_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getStreamingData()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->streamingData_:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasPlayabilityStatus()Z
    .registers 2

    .line 219
    iget p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasStreamingData()Z
    .registers 1

    .line 267
    iget p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
