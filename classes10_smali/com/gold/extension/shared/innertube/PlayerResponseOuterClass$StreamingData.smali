.class public final Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlayerResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamingData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;",
        ">;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADAPTIVEFORMATS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

.field public static final FORMATS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVERABRSTREAMINGURL_FIELD_NUMBER:I = 0xf


# instance fields
.field private adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;"
        }
    .end annotation
.end field

.field private formats_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;"
        }
    .end annotation
.end field

.field private serverAbrStreamingUrl_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$maddAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->addAdaptiveFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->addAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddAllAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Ljava/lang/Iterable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->addAllAdaptiveFormats(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddAllFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Ljava/lang/Iterable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->addAllFormats(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->addFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->addFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->clearAdaptiveFormats()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->clearFormats()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearServerAbrStreamingUrl(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->clearServerAbrStreamingUrl()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->removeAdaptiveFormats(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->removeFormats(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->setAdaptiveFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->setFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetServerAbrStreamingUrl(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->setServerAbrStreamingUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetServerAbrStreamingUrlBytes(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->setServerAbrStreamingUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1683
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-direct {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;-><init>()V

    .line 1686
    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 1687
    const-class v1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1027
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1028
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1029
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->serverAbrStreamingUrl_:Ljava/lang/String;

    return-void
.end method

.method private addAdaptiveFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 3

    .line 1198
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1199
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureAdaptiveFormatsIsMutable()V

    .line 1200
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 2

    .line 1188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1189
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureAdaptiveFormatsIsMutable()V

    .line 1190
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAdaptiveFormats(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;)V"
        }
    .end annotation

    .line 1207
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureAdaptiveFormatsIsMutable()V

    .line 1208
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllFormats(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;)V"
        }
    .end annotation

    .line 1110
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureFormatsIsMutable()V

    .line 1111
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 3

    .line 1101
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1102
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureFormatsIsMutable()V

    .line 1103
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 2

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureFormatsIsMutable()V

    .line 1093
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAdaptiveFormats()V
    .registers 2

    .line 1215
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearFormats()V
    .registers 2

    .line 1118
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearServerAbrStreamingUrl()V
    .registers 2

    .line 1260
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getServerAbrStreamingUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->serverAbrStreamingUrl_:Ljava/lang/String;

    return-void
.end method

.method private ensureAdaptiveFormatsIsMutable()V
    .registers 3

    .line 1166
    iget-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1167
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1169
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method private ensureFormatsIsMutable()V
    .registers 3

    .line 1069
    iget-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1070
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1072
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 1

    .line 1692
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 1

    .line 1350
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 2

    .line 1353
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1326
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1333
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1289
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1296
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1338
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1345
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1313
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1320
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1276
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1283
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1301
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1308
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;",
            ">;"
        }
    .end annotation

    .line 1698
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAdaptiveFormats(I)V
    .registers 2

    .line 1221
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureAdaptiveFormatsIsMutable()V

    .line 1222
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeFormats(I)V
    .registers 2

    .line 1124
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureFormatsIsMutable()V

    .line 1125
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAdaptiveFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 3

    .line 1179
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1180
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureAdaptiveFormatsIsMutable()V

    .line 1181
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 3

    .line 1082
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1083
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->ensureFormatsIsMutable()V

    .line 1084
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setServerAbrStreamingUrl(Ljava/lang/String;)V
    .registers 2

    .line 1251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1253
    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->serverAbrStreamingUrl_:Ljava/lang/String;

    return-void
.end method

.method private setServerAbrStreamingUrlBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1268
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1269
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->serverAbrStreamingUrl_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1630
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_56

    .line 1676
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 1669
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1654
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 1656
    const-class p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    monitor-enter p1

    .line 1657
    :try_start_1a
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 1659
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1662
    sput-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1664
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

    .line 1651
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    return-object p0

    .line 1638
    :pswitch_32  #0x3
    const-string p0, "formats_"

    const-class p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    const-string p2, "adaptiveFormats_"

    const-class p3, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    const-string v0, "serverAbrStreamingUrl_"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1645
    const-string p1, "\u0000\u0003\u0000\u0000\u0002\u000f\u0003\u0000\u0002\u0000\u0002\u001b\u0003\u001b\u000fȈ"

    .line 1648
    sget-object p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1635
    :pswitch_49  #0x2
    new-instance p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;-><init>(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass-IA;)V

    return-object p0

    .line 1632
    :pswitch_4f  #0x1
    new-instance p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_49  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getAdaptiveFormats(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2

    .line 1156
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public getAdaptiveFormatsCount()I
    .registers 1

    .line 1149
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getAdaptiveFormatsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;"
        }
    .end annotation

    .line 1135
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getAdaptiveFormatsOrBuilder(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;
    .registers 2

    .line 1163
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;

    return-object p0
.end method

.method public getAdaptiveFormatsOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1142
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->adaptiveFormats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getFormats(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2

    .line 1059
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public getFormatsCount()I
    .registers 1

    .line 1052
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getFormatsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;"
        }
    .end annotation

    .line 1038
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getFormatsOrBuilder(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;
    .registers 2

    .line 1066
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;

    return-object p0
.end method

.method public getFormatsOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1045
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->formats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getServerAbrStreamingUrl()Ljava/lang/String;
    .registers 1

    .line 1233
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->serverAbrStreamingUrl_:Ljava/lang/String;

    return-object p0
.end method

.method public getServerAbrStreamingUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 1242
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->serverAbrStreamingUrl_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
