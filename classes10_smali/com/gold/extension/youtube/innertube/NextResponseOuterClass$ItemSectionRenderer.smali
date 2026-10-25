.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemSectionRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRendererOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECTIONIDENTIFIER_FIELD_NUMBER:I = 0x7

.field public static final TERTIARYCONTENTS_FIELD_NUMBER:I = 0x1


# instance fields
.field private sectionIdentifier_:Ljava/lang/String;

.field private tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$maddAllTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;Ljava/lang/Iterable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->addAllTertiaryContents(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->addTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->addTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSectionIdentifier(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->clearSectionIdentifier()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->clearTertiaryContents()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->removeTertiaryContents(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSectionIdentifier(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->setSectionIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSectionIdentifierBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->setSectionIdentifierBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->setTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 3176
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;-><init>()V

    .line 3179
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    .line 3180
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2721
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2722
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2723
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->sectionIdentifier_:Ljava/lang/String;

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

    .line 2804
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2805
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 3

    .line 2795
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2796
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2797
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 2

    .line 2785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2786
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2787
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearSectionIdentifier()V
    .registers 2

    .line 2857
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->getSectionIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->sectionIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private clearTertiaryContents()V
    .registers 2

    .line 2812
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureTertiaryContentsIsMutable()V
    .registers 3

    .line 2763
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2764
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2766
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 1

    .line 3185
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 1

    .line 2947
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 2

    .line 2950
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2923
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2930
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2886
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2893
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2935
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2942
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2910
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2917
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2873
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2880
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2898
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2905
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;",
            ">;"
        }
    .end annotation

    .line 3191
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTertiaryContents(I)V
    .registers 2

    .line 2818
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2819
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setSectionIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 2848
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2850
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->sectionIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setSectionIdentifierBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 2865
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2866
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->sectionIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 3

    .line 2776
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2777
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->ensureTertiaryContentsIsMutable()V

    .line 2778
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3125
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_52

    .line 3169
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 3162
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 3147
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 3149
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    monitor-enter p1

    .line 3150
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 3152
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3155
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 3157
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

    .line 3144
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0

    .line 3133
    :pswitch_32  #0x3
    const-string p0, "tertiaryContents_"

    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    const-string p2, "sectionIdentifier_"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 3138
    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0007\u0002\u0000\u0001\u0000\u0001\u001b\u0007Ȉ"

    .line 3141
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3130
    :pswitch_45  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 3127
    :pswitch_4b  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;-><init>()V

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

.method public getSectionIdentifier()Ljava/lang/String;
    .registers 1

    .line 2830
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->sectionIdentifier_:Ljava/lang/String;

    return-object p0
.end method

.method public getSectionIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 2839
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->sectionIdentifier_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTertiaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2

    .line 2753
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public getTertiaryContentsCount()I
    .registers 1

    .line 2746
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 2732
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getTertiaryContentsOrBuilder(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContentsOrBuilder;
    .registers 2

    .line 2760
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 2739
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->tertiaryContents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
