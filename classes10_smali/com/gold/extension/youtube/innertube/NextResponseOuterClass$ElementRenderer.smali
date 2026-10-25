.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ElementRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRendererOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

.field public static final NEWELEMENT_FIELD_NUMBER:I = 0xa4a97b7

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private newElement_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;


# direct methods
.method public static bridge synthetic -$$Nest$mclearNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->clearNewElement()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->mergeNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->setNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 6357
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;-><init>()V

    .line 6360
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    .line 6361
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6105
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearNewElement()V
    .registers 2

    const/4 v0, 0x0

    .line 6152
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->newElement_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    .line 6153
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 1

    .line 6366
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object v0
.end method

.method private mergeNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V
    .registers 4

    .line 6138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6139
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->newElement_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    if-eqz v0, :cond_22

    .line 6140
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 6141
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->newElement_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    .line 6142
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->newElement_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    goto :goto_24

    .line 6144
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->newElement_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    .line 6146
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;
    .registers 1

    .line 6233
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;
    .registers 2

    .line 6236
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6209
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6216
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6172
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6179
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6221
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6228
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6196
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6203
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6159
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6166
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6184
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6191
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;",
            ">;"
        }
    .end annotation

    .line 6372
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V
    .registers 2

    .line 6129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6130
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->newElement_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    .line 6131
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 6307
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 6350
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 6343
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 6328
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 6330
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    monitor-enter p1

    .line 6331
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 6333
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6336
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 6338
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

    .line 6325
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    return-object p0

    .line 6315
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "newElement_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 6319
    const-string p1, "\u0000\u0001\u0000\u0001\uf7b7剔\uf7b7剔\u0001\u0000\u0000\u0000\uf7b7剔ဉ\u0000"

    .line 6322
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6312
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 6309
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;-><init>()V

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

.method public getNewElement()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 1

    .line 6122
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->newElement_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasNewElement()Z
    .registers 2

    .line 6115
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
