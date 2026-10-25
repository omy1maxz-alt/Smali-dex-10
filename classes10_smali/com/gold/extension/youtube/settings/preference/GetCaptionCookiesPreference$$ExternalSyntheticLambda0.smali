.class public final synthetic Lcom/gold/extension/youtube/settings/preference/GetCaptionCookiesPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/settings/preference/GetCaptionCookiesPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/settings/preference/GetCaptionCookiesPreference;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/GetCaptionCookiesPreference$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/youtube/settings/preference/GetCaptionCookiesPreference;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/GetCaptionCookiesPreference$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/youtube/settings/preference/GetCaptionCookiesPreference;

    invoke-static {p0}, Lcom/gold/extension/youtube/settings/preference/GetCaptionCookiesPreference;->$r8$lambda$MeDCNf0URMrGx_1DMUpItWojZTY(Lcom/gold/extension/youtube/settings/preference/GetCaptionCookiesPreference;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
