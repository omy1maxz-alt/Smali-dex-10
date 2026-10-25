.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Xtags.java"

# interfaces
.implements Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePairOrBuilder;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

.field public static final KEY_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mclearKey(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->clearKey()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearValue(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->clearValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetKey(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetKeyBytes(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->setKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetValue(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetValueBytes(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->setValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    const-class v1, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->key_:Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->value_:Ljava/lang/String;

    return-void
.end method

.method private clearKey()V
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getDefaultInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->key_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getDefaultInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->value_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-virtual {v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKey(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->key_:Ljava/lang/String;

    return-void
.end method

.method private setKeyBytes(Lcom/google/protobuf/ByteString;)V
    .registers 3

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->key_:Ljava/lang/String;

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->value_:Ljava/lang/String;

    return-void
.end method

.method private setValueBytes(Lcom/google/protobuf/ByteString;)V
    .registers 3

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->value_:Ljava/lang/String;

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_52

    throw v1

    :pswitch_d  #0x6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_13  #0x5
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_2e

    const-class v1, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    monitor-enter v1

    :try_start_1a
    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    if-nez v0, :cond_29

    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->PARSER:Lcom/google/protobuf/Parser;

    :cond_29
    monitor-exit v1

    goto :goto_2e

    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_2b

    throw v2

    :cond_2e
    :goto_2e
    return-object v0

    :pswitch_2f  #0x4
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0

    :pswitch_32  #0x3
    const-string v0, "bitField0_"

    const-string v1, "key_"

    const-string v2, "value_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ለ\u0000\u0002ለ\u0001"

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v2, v1, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_45  #0x2
    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags-IA;)V

    return-object v0

    :pswitch_4b  #0x1
    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;-><init>()V

    return-object v0

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

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->key_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->value_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasKey()Z
    .registers 3

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasValue()Z
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
