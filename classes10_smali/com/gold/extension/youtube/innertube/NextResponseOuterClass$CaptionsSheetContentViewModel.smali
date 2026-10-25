.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptionsSheetContentViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModelOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

.field public static final ENABLEPLAYERADAPTER1_FIELD_NUMBER:I = 0xa

.field public static final ENABLEPLAYERADAPTER2_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGSCTATEXT_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private enablePlayerAdapter1_:Z

.field private enablePlayerAdapter2_:Z

.field private settingsCtaText_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;


# direct methods
.method public static bridge synthetic -$$Nest$mclearEnablePlayerAdapter1(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->clearEnablePlayerAdapter1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearEnablePlayerAdapter2(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->clearEnablePlayerAdapter2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->clearSettingsCtaText()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->mergeSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnablePlayerAdapter1(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->setEnablePlayerAdapter1(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnablePlayerAdapter2(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->setEnablePlayerAdapter2(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->setSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 13766
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;-><init>()V

    .line 13769
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    .line 13770
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13404
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearEnablePlayerAdapter1()V
    .registers 2

    const/4 v0, 0x0

    .line 13478
    iput-boolean v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->enablePlayerAdapter1_:Z

    return-void
.end method

.method private clearEnablePlayerAdapter2()V
    .registers 2

    const/4 v0, 0x0

    .line 13504
    iput-boolean v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->enablePlayerAdapter2_:Z

    return-void
.end method

.method private clearSettingsCtaText()V
    .registers 2

    const/4 v0, 0x0

    .line 13451
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->settingsCtaText_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    .line 13452
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 1

    .line 13775
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object v0
.end method

.method private mergeSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)V
    .registers 4

    .line 13437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13438
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->settingsCtaText_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    if-eqz v0, :cond_22

    .line 13439
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 13440
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->settingsCtaText_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    .line 13441
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->settingsCtaText_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    goto :goto_24

    .line 13443
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->settingsCtaText_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    .line 13445
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 1

    .line 13584
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 2

    .line 13587
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13560
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13567
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13523
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13530
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13572
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13579
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13547
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13554
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13510
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13517
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13535
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13542
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;",
            ">;"
        }
    .end annotation

    .line 13781
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEnablePlayerAdapter1(Z)V
    .registers 2

    .line 13471
    iput-boolean p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->enablePlayerAdapter1_:Z

    return-void
.end method

.method private setEnablePlayerAdapter2(Z)V
    .registers 2

    .line 13497
    iput-boolean p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->enablePlayerAdapter2_:Z

    return-void
.end method

.method private setSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)V
    .registers 2

    .line 13428
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13429
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->settingsCtaText_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    .line 13430
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 13714
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_54

    .line 13759
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 13752
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 13737
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 13739
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    monitor-enter p1

    .line 13740
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 13742
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13745
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 13747
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

    .line 13734
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    return-object p0

    .line 13722
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "settingsCtaText_"

    const-string p2, "enablePlayerAdapter1_"

    const-string p3, "enablePlayerAdapter2_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 13728
    const-string p1, "\u0000\u0003\u0000\u0001\u0006\u000b\u0003\u0000\u0000\u0000\u0006ဉ\u0000\n\u0007\u000b\u0007"

    .line 13731
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13719
    :pswitch_47  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 13716
    :pswitch_4d  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;-><init>()V

    return-object p0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_47  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getEnablePlayerAdapter1()Z
    .registers 1

    .line 13463
    iget-boolean p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->enablePlayerAdapter1_:Z

    return p0
.end method

.method public getEnablePlayerAdapter2()Z
    .registers 1

    .line 13489
    iget-boolean p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->enablePlayerAdapter2_:Z

    return p0
.end method

.method public getSettingsCtaText()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;
    .registers 1

    .line 13421
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->settingsCtaText_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasSettingsCtaText()Z
    .registers 2

    .line 13414
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
