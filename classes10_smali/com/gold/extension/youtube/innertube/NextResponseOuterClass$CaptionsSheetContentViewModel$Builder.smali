.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 13600
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnablePlayerAdapter1()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 2

    .line 13674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->-$$Nest$mclearEnablePlayerAdapter1(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)V

    return-object p0
.end method

.method public clearEnablePlayerAdapter2()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 2

    .line 13702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->-$$Nest$mclearEnablePlayerAdapter2(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)V

    return-object p0
.end method

.method public clearSettingsCtaText()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 2

    .line 13646
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13647
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->-$$Nest$mclearSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)V

    return-object p0
.end method

.method public getEnablePlayerAdapter1()Z
    .registers 1

    .line 13657
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->getEnablePlayerAdapter1()Z

    move-result p0

    return p0
.end method

.method public getEnablePlayerAdapter2()Z
    .registers 1

    .line 13685
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->getEnablePlayerAdapter2()Z

    move-result p0

    return p0
.end method

.method public getSettingsCtaText()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;
    .registers 1

    .line 13616
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->getSettingsCtaText()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    move-result-object p0

    return-object p0
.end method

.method public hasSettingsCtaText()Z
    .registers 1

    .line 13609
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->hasSettingsCtaText()Z

    move-result p0

    return p0
.end method

.method public mergeSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 3

    .line 13639
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13640
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->-$$Nest$mmergeSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)V

    return-object p0
.end method

.method public setEnablePlayerAdapter1(Z)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 3

    .line 13665
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13666
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->-$$Nest$msetEnablePlayerAdapter1(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;Z)V

    return-object p0
.end method

.method public setEnablePlayerAdapter2(Z)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 3

    .line 13693
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13694
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->-$$Nest$msetEnablePlayerAdapter2(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;Z)V

    return-object p0
.end method

.method public setSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 3

    .line 13631
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13632
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->-$$Nest$msetSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)V

    return-object p0
.end method

.method public setSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;
    .registers 3

    .line 13622
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13623
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;->-$$Nest$msetSettingsCtaText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SettingsCtaText;)V

    return-object p0
.end method
