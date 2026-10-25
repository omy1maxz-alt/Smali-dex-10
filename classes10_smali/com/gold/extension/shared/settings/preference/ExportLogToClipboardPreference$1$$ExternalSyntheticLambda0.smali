.class public final synthetic Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/lang/CharSequence;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->$r8$lambda$wq7QrMPx8BTPOwQ4TTPfNFej9OM(Landroid/widget/EditText;Ljava/lang/CharSequence;)V

    return-void
.end method
