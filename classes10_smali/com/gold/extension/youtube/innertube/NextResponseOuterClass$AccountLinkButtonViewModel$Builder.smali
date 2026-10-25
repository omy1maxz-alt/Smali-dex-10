.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 16505
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccountLinkStatusEntityKey()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel$Builder;
    .registers 2

    .line 16542
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;->-$$Nest$mclearAccountLinkStatusEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;)V

    return-object p0
.end method

.method public getAccountLinkStatusEntityKey()Ljava/lang/String;
    .registers 1

    .line 16515
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;->getAccountLinkStatusEntityKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAccountLinkStatusEntityKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 16524
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;->getAccountLinkStatusEntityKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAccountLinkStatusEntityKey(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel$Builder;
    .registers 3

    .line 16533
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16534
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;->-$$Nest$msetAccountLinkStatusEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccountLinkStatusEntityKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel$Builder;
    .registers 3

    .line 16553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;->-$$Nest$msetAccountLinkStatusEntityKeyBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AccountLinkButtonViewModel;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
