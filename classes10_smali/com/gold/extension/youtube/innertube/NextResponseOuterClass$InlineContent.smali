.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InlineContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

.field public static final PANELCONTENTRENDERER_FIELD_NUMBER:I = 0x1a51de8a

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private panelContentRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;


# direct methods
.method public static bridge synthetic -$$Nest$mclearPanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->clearPanelContentRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->mergePanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->setPanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 5476
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;-><init>()V

    .line 5479
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    .line 5480
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5224
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearPanelContentRenderer()V
    .registers 2

    const/4 v0, 0x0

    .line 5271
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->panelContentRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    .line 5272
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 1

    .line 5485
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object v0
.end method

.method private mergePanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V
    .registers 4

    .line 5257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5258
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->panelContentRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    if-eqz v0, :cond_22

    .line 5259
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 5260
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->panelContentRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    .line 5261
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->panelContentRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    goto :goto_24

    .line 5263
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->panelContentRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    .line 5265
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;
    .registers 1

    .line 5352
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;
    .registers 2

    .line 5355
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5328
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5335
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5291
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5298
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5340
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5347
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5315
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5322
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5278
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5285
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5303
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5310
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;",
            ">;"
        }
    .end annotation

    .line 5491
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V
    .registers 2

    .line 5248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5249
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->panelContentRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    .line 5250
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 5426
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 5469
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 5462
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 5447
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 5449
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    monitor-enter p1

    .line 5450
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 5452
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5455
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 5457
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

    .line 5444
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    return-object p0

    .line 5434
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "panelContentRenderer_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 5438
    const-string p1, "\u0000\u0001\u0000\u0001ﺊ튎ﺊ튎\u0001\u0000\u0000\u0000ﺊ튎ဉ\u0000"

    .line 5441
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5431
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 5428
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;-><init>()V

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

.method public getPanelContentRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 1

    .line 5241
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->panelContentRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasPanelContentRenderer()Z
    .registers 2

    .line 5234
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
