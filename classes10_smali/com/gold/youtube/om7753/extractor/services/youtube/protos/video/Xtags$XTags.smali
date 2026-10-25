.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Xtags.java"

# interfaces
.implements Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTagsOrBuilder;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final XTAGS_FIELD_NUMBER:I = 0x1


# instance fields
.field private xtags_:Lcom/google/protobuf/Internal$ProtobufList;


# direct methods
.method static bridge synthetic -$$Nest$maddAllXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->addAllXtags(Ljava/lang/Iterable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->addXtags(ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->addXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;)V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->clearXtags()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->removeXtags(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->setXtags(ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    const-class v1, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private addAllXtags(Ljava/lang/Iterable;)V
    .registers 3

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->ensureXtagsIsMutable()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addXtags(ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->ensureXtagsIsMutable()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->ensureXtagsIsMutable()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearXtags()V
    .registers 2

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureXtagsIsMutable()V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_f

    nop

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_f
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-virtual {v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeXtags(I)V
    .registers 3

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->ensureXtagsIsMutable()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setXtags(ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->ensureXtagsIsMutable()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    packed-switch v0, :pswitch_data_50

    throw v1

    :pswitch_d  #0x6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_13  #0x5
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_2e

    const-class v1, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    monitor-enter v1

    :try_start_1a
    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    if-nez v0, :cond_29

    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    return-object v0

    :pswitch_32  #0x3
    const-string v0, "xtags_"

    const-class v1, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->DEFAULT_INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v2, v1, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_43  #0x2
    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags-IA;)V

    return-object v0

    :pswitch_49  #0x1
    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;-><init>()V

    return-object v0

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

.method public getXtags(I)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    return-object v0
.end method

.method public getXtagsCount()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getXtagsList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getXtagsOrBuilder(I)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePairOrBuilder;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePairOrBuilder;

    return-object v0
.end method

.method public getXtagsOrBuilderList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->xtags_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
