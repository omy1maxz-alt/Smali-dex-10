.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContentsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TertiaryContents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContentsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

.field public static final ELEMENTRENDERER_FIELD_NUMBER:I = 0x9267492

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private elementRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;


# direct methods
.method public static bridge synthetic -$$Nest$mclearElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->clearElementRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->mergeElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->setElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 4302
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;-><init>()V

    .line 4305
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    .line 4306
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4050
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearElementRenderer()V
    .registers 2

    const/4 v0, 0x0

    .line 4097
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->elementRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    .line 4098
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 1

    .line 4311
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object v0
.end method

.method private mergeElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V
    .registers 4

    .line 4083
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4084
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->elementRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    if-eqz v0, :cond_22

    .line 4085
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 4086
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->elementRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    .line 4087
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->elementRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    goto :goto_24

    .line 4089
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->elementRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    .line 4091
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;
    .registers 1

    .line 4178
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;
    .registers 2

    .line 4181
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4154
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4161
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4117
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4124
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4166
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4173
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4141
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4148
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4104
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4111
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4129
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4136
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;"
        }
    .end annotation

    .line 4317
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V
    .registers 2

    .line 4074
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4075
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->elementRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    .line 4076
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 4252
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 4295
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 4288
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4273
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 4275
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    monitor-enter p1

    .line 4276
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 4278
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4281
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 4283
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

    .line 4270
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    return-object p0

    .line 4260
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "elementRenderer_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 4264
    const-string p1, "\u0000\u0001\u0000\u0001\uf492䤳\uf492䤳\u0001\u0000\u0000\u0000\uf492䤳ဉ\u0000"

    .line 4267
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4257
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 4254
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;-><init>()V

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

.method public getElementRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 1

    .line 4067
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->elementRenderer_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasElementRenderer()Z
    .registers 2

    .line 4060
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
