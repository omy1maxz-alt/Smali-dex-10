.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecondaryResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResultsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDARYCONTENTS_FIELD_NUMBER:I = 0x1


# instance fields
.field private secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$maddAllSecondaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;Ljava/lang/Iterable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->addAllSecondaryContents(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddSecondaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->addSecondaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddSecondaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->addSecondaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSecondaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->clearSecondaryContents()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSecondaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->removeSecondaryContents(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSecondaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->setSecondaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1569
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;-><init>()V

    .line 1572
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    .line 1573
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1214
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1215
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private addAllSecondaryContents(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;",
            ">;)V"
        }
    .end annotation

    .line 1296
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->ensureSecondaryContentsIsMutable()V

    .line 1297
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addSecondaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 3

    .line 1287
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1288
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->ensureSecondaryContentsIsMutable()V

    .line 1289
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSecondaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 2

    .line 1277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1278
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->ensureSecondaryContentsIsMutable()V

    .line 1279
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearSecondaryContents()V
    .registers 2

    .line 1304
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureSecondaryContentsIsMutable()V
    .registers 3

    .line 1255
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1256
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1258
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 1

    .line 1578
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;
    .registers 1

    .line 1391
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;
    .registers 2

    .line 1394
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1367
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1374
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1330
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1337
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1379
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1386
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1354
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1361
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1317
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1324
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1342
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1349
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;",
            ">;"
        }
    .end annotation

    .line 1584
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeSecondaryContents(I)V
    .registers 2

    .line 1310
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->ensureSecondaryContentsIsMutable()V

    .line 1311
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setSecondaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 3

    .line 1268
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1269
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->ensureSecondaryContentsIsMutable()V

    .line 1270
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1520
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 1562
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 1555
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1540
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 1542
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    monitor-enter p1

    .line 1543
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 1545
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1548
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1550
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

    .line 1537
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    return-object p0

    .line 1528
    :pswitch_32  #0x3
    const-string p0, "secondaryContents_"

    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1532
    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 1534
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1525
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 1522
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;-><init>()V

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

.method public getSecondaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 2

    .line 1245
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public getSecondaryContentsCount()I
    .registers 1

    .line 1238
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSecondaryContentsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;",
            ">;"
        }
    .end annotation

    .line 1224
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getSecondaryContentsOrBuilder(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContentsOrBuilder;
    .registers 2

    .line 1252
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContentsOrBuilder;

    return-object p0
.end method

.method public getSecondaryContentsOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContentsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1231
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->secondaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
