.class public final synthetic Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda4;->f$0:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda4;->f$0:Landroid/widget/EditText;

    invoke-static {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->$r8$lambda$0gCzT7zi714C1Bmmr9QZ5SVm8y4(Landroid/widget/EditText;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
