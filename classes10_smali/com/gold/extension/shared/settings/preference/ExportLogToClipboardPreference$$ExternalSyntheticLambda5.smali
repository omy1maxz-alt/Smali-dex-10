.class public final synthetic Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->$r8$lambda$QOpYC0GvAcDDn5NrGDzMND3DOMs(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
