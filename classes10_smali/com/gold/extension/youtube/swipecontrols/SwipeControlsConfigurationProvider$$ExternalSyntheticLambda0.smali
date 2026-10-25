.class public final synthetic Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/StringSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/StringSetting;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/settings/StringSetting;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-static {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;->$r8$lambda$OKHCE5hk4K1fFm-4S2lkYFhq9vo(Lcom/gold/extension/shared/settings/StringSetting;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
