.class Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$1;
.super Ljava/lang/Object;
.source "ExternalDownloaderPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->createEditText(Landroid/content/Context;Ljava/lang/String;ZLjava/util/function/Function;)Landroid/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;

.field final synthetic val$textChangeCallback:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Ljava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 396
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$1;->this$0:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$1;->val$textChangeCallback:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 406
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$1;->val$textChangeCallback:Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method
