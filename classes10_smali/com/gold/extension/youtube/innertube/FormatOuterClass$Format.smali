.class public final Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FormatOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/FormatOuterClass$FormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/FormatOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;",
        "Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/FormatOuterClass$FormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x8

.field public static final MIMETYPE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private height_:I

.field private mimeType_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mclearHeight(Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->clearHeight()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearMimeType(Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->clearMimeType()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHeight(Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->setHeight(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMimeType(Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->setMimeType(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMimeTypeBytes(Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->setMimeTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 351
    new-instance v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;-><init>()V

    .line 354
    sput-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    .line 355
    const-class v1, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->mimeType_:Ljava/lang/String;

    return-void
.end method

.method private clearHeight()V
    .registers 2

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->height_:I

    return-void
.end method

.method private clearMimeType()V
    .registers 2

    .line 82
    invoke-static {}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->mimeType_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 1

    .line 360
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format$Builder;
    .registers 1

    .line 198
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format$Builder;
    .registers 2

    .line 201
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 144
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;",
            ">;"
        }
    .end annotation

    .line 366
    sget-object v0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeight(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->height_:I

    return-void
.end method

.method private setMimeType(Ljava/lang/String;)V
    .registers 2

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->mimeType_:Ljava/lang/String;

    return-void
.end method

.method private setMimeTypeBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 90
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 91
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->mimeType_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 302
    sget-object p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 344
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 337
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 322
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 324
    const-class p1, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    monitor-enter p1

    .line 325
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 327
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 330
    sput-object p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 332
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

    .line 319
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    return-object p0

    .line 310
    :pswitch_32  #0x3
    const-string p0, "mimeType_"

    const-string p1, "height_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 314
    const-string p1, "\u0000\u0002\u0000\u0000\u0005\b\u0002\u0000\u0000\u0000\u0005Ȉ\b\u0004"

    .line 316
    sget-object p2, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 307
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format$Builder;-><init>(Lcom/gold/extension/youtube/innertube/FormatOuterClass-IA;)V

    return-object p0

    .line 304
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;-><init>()V

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

.method public getHeight()I
    .registers 1

    .line 103
    iget p0, p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->height_:I

    return p0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->mimeType_:Ljava/lang/String;

    return-object p0
.end method

.method public getMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->mimeType_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
