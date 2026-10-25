.class public final Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;
.super Ljava/lang/Object;
.source "SponsorBlockApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;,
        Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;,
        Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;,
        Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;,
        Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;,
        Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;,
        Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;
    }
.end annotation


# static fields
.field private static volatile configuration:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;
    .registers 1

    .line 56
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->configuration:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    if-eqz v0, :cond_5

    return-object v0

    .line 58
    :cond_5
    const-string v0, "SponsorBlockApi not configured"

    invoke-static {v0}, Lcom/google/protobuf/FieldSet$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static configure(Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;)V
    .registers 1

    .line 48
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->configuration:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    return-void
.end method
