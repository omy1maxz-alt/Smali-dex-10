.class Lcom/gold/extension/youtube/patches/NavigationBarPatch$1;
.super Ljava/util/EnumMap;
.source "NavigationBarPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/NavigationBarPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 61
    sget-object p1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->HOME:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HOME_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object p1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->CREATE:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CREATE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object p1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->NOTIFICATIONS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_NOTIFICATIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object p1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SHORTS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object p1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SUBSCRIPTIONS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIPTIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
