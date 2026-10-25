.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PivotBarRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRendererOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

.field public static final ITEMS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private items_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$maddAllItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;Ljava/lang/Iterable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->addAllItems(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->addItems(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->addItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->clearItems()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->removeItems(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->setItems(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 3752
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;-><init>()V

    .line 3755
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    .line 3756
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3397
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3398
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private addAllItems(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;",
            ">;)V"
        }
    .end annotation

    .line 3479
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->ensureItemsIsMutable()V

    .line 3480
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addItems(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V
    .registers 3

    .line 3470
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3471
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->ensureItemsIsMutable()V

    .line 3472
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V
    .registers 2

    .line 3460
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3461
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->ensureItemsIsMutable()V

    .line 3462
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearItems()V
    .registers 2

    .line 3487
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureItemsIsMutable()V
    .registers 3

    .line 3438
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3439
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 3441
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 1

    .line 3761
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 1

    .line 3574
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 2

    .line 3577
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3550
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3557
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3513
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3520
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3562
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3569
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3537
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3544
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3500
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3507
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3525
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3532
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;",
            ">;"
        }
    .end annotation

    .line 3767
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeItems(I)V
    .registers 2

    .line 3493
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->ensureItemsIsMutable()V

    .line 3494
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setItems(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V
    .registers 3

    .line 3451
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3452
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->ensureItemsIsMutable()V

    .line 3453
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3703
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 3745
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 3738
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 3723
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 3725
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    monitor-enter p1

    .line 3726
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 3728
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3731
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 3733
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

    .line 3720
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    return-object p0

    .line 3711
    :pswitch_32  #0x3
    const-string p0, "items_"

    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 3715
    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 3717
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3708
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 3705
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;-><init>()V

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

.method public getItems(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 2

    .line 3428
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public getItemsCount()I
    .registers 1

    .line 3421
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;",
            ">;"
        }
    .end annotation

    .line 3407
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getItemsOrBuilder(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2OrBuilder;
    .registers 2

    .line 3435
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2OrBuilder;

    return-object p0
.end method

.method public getItemsOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 3414
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->items_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
