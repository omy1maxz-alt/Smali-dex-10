.class public final synthetic Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/net/HttpURLConnection;


# direct methods
.method public synthetic constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda7;->f$0:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda7;->f$0:Ljava/net/HttpURLConnection;

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->$r8$lambda$_aN0rbMkI3iGHDIzLRvUk1kiQlw(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
