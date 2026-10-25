.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShelfRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRendererOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private content_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;


# direct methods
.method public static bridge synthetic -$$Nest$mclearContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->clearContent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->mergeContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->setContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 3469
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;-><init>()V

    .line 3472
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    .line 3473
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3218
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearContent()V
    .registers 2

    const/4 v0, 0x0

    .line 3265
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->content_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    .line 3266
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 1

    .line 3478
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object v0
.end method

.method private mergeContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;)V
    .registers 4

    .line 3251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3252
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->content_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    if-eqz v0, :cond_22

    .line 3253
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 3254
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->content_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    .line 3255
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->content_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    goto :goto_24

    .line 3257
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->content_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    .line 3259
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;
    .registers 1

    .line 3346
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;
    .registers 2

    .line 3349
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3322
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3329
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3285
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3292
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3334
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3341
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3309
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3316
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3272
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3279
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3297
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3304
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;",
            ">;"
        }
    .end annotation

    .line 3484
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;)V
    .registers 2

    .line 3242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3243
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->content_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    .line 3244
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3420
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 3462
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 3455
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 3440
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 3442
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    monitor-enter p1

    .line 3443
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 3445
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3448
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 3450
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

    .line 3437
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0

    .line 3428
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "content_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 3432
    const-string p1, "\u0000\u0001\u0000\u0001\u0005\u0005\u0001\u0000\u0000\u0000\u0005ဉ\u0000"

    .line 3434
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3425
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 3422
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;-><init>()V

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

.method public getContent()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;
    .registers 1

    .line 3235
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->content_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasContent()Z
    .registers 2

    .line 3228
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
