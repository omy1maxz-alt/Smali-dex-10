.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReelWatchEndpoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpointOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

.field public static final IDENTIFIER_FIELD_NUMBER:I = 0x35

.field public static final INPUTTYPE_FIELD_NUMBER:I = 0xc

.field public static final PAGEUITYPE_FIELD_NUMBER:I = 0x1b

.field public static final PARAMS_FIELD_NUMBER:I = 0xb

.field public static final PARENTTABIDENTIFIER_FIELD_NUMBER:I = 0x1e

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYERPARAMS_FIELD_NUMBER:I = 0x4

.field public static final PLAYLISTID_FIELD_NUMBER:I = 0x2

.field public static final VIDEOTYPE_FIELD_NUMBER:I = 0x1f


# instance fields
.field private identifier_:Ljava/lang/String;

.field private inputType_:I

.field private pageUiType_:J

.field private params_:Ljava/lang/String;

.field private parentTabIdentifier_:Ljava/lang/String;

.field private playerParams_:Ljava/lang/String;

.field private playlistId_:Ljava/lang/String;

.field private videoType_:I


# direct methods
.method public static bridge synthetic -$$Nest$mclearIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->clearIdentifier()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearInputType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->clearInputType()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPageUiType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->clearPageUiType()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearParams(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->clearParams()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearParentTabIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->clearParentTabIdentifier()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPlayerParams(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->clearPlayerParams()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPlaylistId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->clearPlaylistId()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearVideoType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->clearVideoType()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetIdentifierBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setIdentifierBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setInputType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputTypeValue(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setInputTypeValue(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPageUiType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setPageUiType(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetParams(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setParams(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetParamsBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setParamsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetParentTabIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setParentTabIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetParentTabIdentifierBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setParentTabIdentifierBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPlayerParams(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setPlayerParams(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPlayerParamsBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setPlayerParamsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPlaylistId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setPlaylistId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPlaylistIdBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setPlaylistIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVideoType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setVideoType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVideoTypeValue(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->setVideoTypeValue(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 9765
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;-><init>()V

    .line 9768
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    .line 9769
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 8839
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8840
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playlistId_:Ljava/lang/String;

    .line 8841
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playerParams_:Ljava/lang/String;

    .line 8842
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->params_:Ljava/lang/String;

    .line 8843
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->parentTabIdentifier_:Ljava/lang/String;

    .line 8844
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->identifier_:Ljava/lang/String;

    return-void
.end method

.method private clearIdentifier()V
    .registers 2

    .line 9205
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->identifier_:Ljava/lang/String;

    return-void
.end method

.method private clearInputType()V
    .registers 2

    const/4 v0, 0x0

    .line 9050
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->inputType_:I

    return-void
.end method

.method private clearPageUiType()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 9076
    iput-wide v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->pageUiType_:J

    return-void
.end method

.method private clearParams()V
    .registers 2

    .line 8977
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getParams()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->params_:Ljava/lang/String;

    return-void
.end method

.method private clearParentTabIdentifier()V
    .registers 2

    .line 9114
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getParentTabIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->parentTabIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private clearPlayerParams()V
    .registers 2

    .line 8929
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getPlayerParams()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playerParams_:Ljava/lang/String;

    return-void
.end method

.method private clearPlaylistId()V
    .registers 2

    .line 8881
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getPlaylistId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playlistId_:Ljava/lang/String;

    return-void
.end method

.method private clearVideoType()V
    .registers 2

    const/4 v0, 0x0

    .line 9167
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->videoType_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 1

    .line 9774
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 1

    .line 9295
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 2

    .line 9298
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9271
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9278
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9234
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9241
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9283
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9290
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9258
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9265
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9221
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9228
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9246
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9253
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;",
            ">;"
        }
    .end annotation

    .line 9780
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 9196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9198
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->identifier_:Ljava/lang/String;

    return-void
.end method

.method private setIdentifierBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 9213
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9214
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->identifier_:Ljava/lang/String;

    return-void
.end method

.method private setInputType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;)V
    .registers 2

    .line 9038
    invoke-virtual {p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->inputType_:I

    return-void
.end method

.method private setInputTypeValue(I)V
    .registers 2

    .line 9026
    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->inputType_:I

    return-void
.end method

.method private setPageUiType(J)V
    .registers 3

    .line 9069
    iput-wide p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->pageUiType_:J

    return-void
.end method

.method private setParams(Ljava/lang/String;)V
    .registers 2

    .line 8968
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8970
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->params_:Ljava/lang/String;

    return-void
.end method

.method private setParamsBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 8985
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8986
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->params_:Ljava/lang/String;

    return-void
.end method

.method private setParentTabIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 9105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9107
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->parentTabIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setParentTabIdentifierBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 9122
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9123
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->parentTabIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setPlayerParams(Ljava/lang/String;)V
    .registers 2

    .line 8920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8922
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playerParams_:Ljava/lang/String;

    return-void
.end method

.method private setPlayerParamsBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 8937
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8938
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playerParams_:Ljava/lang/String;

    return-void
.end method

.method private setPlaylistId(Ljava/lang/String;)V
    .registers 2

    .line 8872
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8874
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playlistId_:Ljava/lang/String;

    return-void
.end method

.method private setPlaylistIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 8889
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8890
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playlistId_:Ljava/lang/String;

    return-void
.end method

.method private setVideoType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;)V
    .registers 2

    .line 9159
    invoke-virtual {p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->videoType_:I

    return-void
.end method

.method private setVideoTypeValue(I)V
    .registers 2

    .line 9151
    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->videoType_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 9709
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5c

    .line 9758
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 9751
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 9736
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2f

    .line 9738
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    monitor-enter p1

    .line 9739
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2b

    .line 9741
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9744
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    .line 9746
    :cond_2b
    :goto_2b
    monitor-exit p1

    return-object p0

    :goto_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_28

    throw p0

    :cond_2f
    return-object p0

    .line 9733
    :pswitch_30  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    return-object p0

    .line 9717
    :pswitch_33  #0x3
    const-string v0, "playlistId_"

    const-string v1, "playerParams_"

    const-string v2, "params_"

    const-string v3, "inputType_"

    const-string v4, "pageUiType_"

    const-string v5, "parentTabIdentifier_"

    const-string v6, "videoType_"

    const-string v7, "identifier_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 9727
    const-string p1, "\u0000\b\u0000\u0000\u00025\b\u0000\u0000\u0000\u0002Ȉ\u0004Ȉ\u000bȈ\f\f\u001b\u0002\u001eȈ\u001f\f5Ȉ"

    .line 9730
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 9714
    :pswitch_50  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 9711
    :pswitch_56  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;-><init>()V

    return-object p0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_56  #00000001
        :pswitch_50  #00000002
        :pswitch_33  #00000003
        :pswitch_30  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 1

    .line 9178
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->identifier_:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 9187
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->identifier_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getInputType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;
    .registers 1

    .line 9014
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->inputType_:I

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;

    move-result-object p0

    if-nez p0, :cond_a

    .line 9015
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;->UNRECOGNIZED:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;

    :cond_a
    return-object p0
.end method

.method public getInputTypeValue()I
    .registers 1

    .line 9002
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->inputType_:I

    return p0
.end method

.method public getPageUiType()J
    .registers 3

    .line 9061
    iget-wide v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->pageUiType_:J

    return-wide v0
.end method

.method public getParams()Ljava/lang/String;
    .registers 1

    .line 8950
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->params_:Ljava/lang/String;

    return-object p0
.end method

.method public getParamsBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 8959
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->params_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getParentTabIdentifier()Ljava/lang/String;
    .registers 1

    .line 9087
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->parentTabIdentifier_:Ljava/lang/String;

    return-object p0
.end method

.method public getParentTabIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 9096
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->parentTabIdentifier_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPlayerParams()Ljava/lang/String;
    .registers 1

    .line 8902
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playerParams_:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayerParamsBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 8911
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playerParams_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .registers 1

    .line 8854
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playlistId_:Ljava/lang/String;

    return-object p0
.end method

.method public getPlaylistIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 8863
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->playlistId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getVideoType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;
    .registers 1

    .line 9143
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->videoType_:I

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;

    move-result-object p0

    if-nez p0, :cond_a

    .line 9144
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;->UNRECOGNIZED:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;

    :cond_a
    return-object p0
.end method

.method public getVideoTypeValue()I
    .registers 1

    .line 9135
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->videoType_:I

    return p0
.end method
