.class public final synthetic Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda2;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda2;->f$0:Landroid/net/Uri;

    iget-object p0, p0, Lcom/gold/extension/shared/privacy/LinkSanitizer$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/privacy/LinkSanitizer;->$r8$lambda$RpIRWPaGKy-pM8Vg9UftG-HLrn8(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
