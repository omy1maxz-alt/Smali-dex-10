.class public final synthetic Lcom/gold/extension/shared/oauth2/requests/OAuth2Requester$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/oauth2/requests/OAuth2Requester$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/oauth2/requests/OAuth2Requester$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/shared/oauth2/requests/OAuth2Requester;->$r8$lambda$NJanyP7-A1hDxtoBAnX25L7foGw(Ljava/lang/String;)V

    return-void
.end method
