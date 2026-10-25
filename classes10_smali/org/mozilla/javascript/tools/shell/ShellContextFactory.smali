.class public Lorg/mozilla/javascript/tools/shell/ShellContextFactory;
.super Lorg/mozilla/javascript/ContextFactory;
.source "ShellContextFactory.java"


# instance fields
.field private allowReservedKeywords:Z

.field private characterEncoding:Ljava/lang/String;

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private generatingDebug:Z

.field private languageVersion:I

.field private optimizationLevel:I

.field private strictMode:Z

.field private warningAsError:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ContextFactory;-><init>()V

    const/16 v0, 0xb4

    iput v0, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->languageVersion:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->allowReservedKeywords:Z

    return-void
.end method


# virtual methods
.method public getCharacterEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method protected hasFeature(Lorg/mozilla/javascript/Context;I)Z
    .registers 4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_14

    packed-switch p2, :pswitch_data_18

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ContextFactory;->hasFeature(Lorg/mozilla/javascript/Context;I)Z

    move-result p1

    return p1

    :pswitch_b  #0xc
    iget-boolean p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->warningAsError:Z

    return p1

    :pswitch_e  #0xa
    iget-boolean p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->generatingDebug:Z

    return p1

    :pswitch_11  #0x8, 0x9, 0xb
    iget-boolean p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->strictMode:Z

    return p1

    :cond_14
    iget-boolean p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->allowReservedKeywords:Z

    return p1

    nop

    :pswitch_data_18
    .packed-switch 0x8
        :pswitch_11  #00000008
        :pswitch_11  #00000009
        :pswitch_e  #0000000a
        :pswitch_11  #0000000b
        :pswitch_b  #0000000c
    .end packed-switch
.end method

.method protected onContextCreated(Lorg/mozilla/javascript/Context;)V
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->languageVersion:I

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->optimizationLevel:I

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    if-eqz v0, :cond_11

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    :cond_11
    iget-boolean v0, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->generatingDebug:Z

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->setGeneratingDebug(Z)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/ContextFactory;->onContextCreated(Lorg/mozilla/javascript/Context;)V

    return-void
.end method

.method public setAllowReservedKeywords(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->allowReservedKeywords:Z

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->characterEncoding:Ljava/lang/String;

    return-void
.end method

.method public setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setGeneratingDebug(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->generatingDebug:Z

    return-void
.end method

.method public setLanguageVersion(I)V
    .registers 2

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkLanguageVersion(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    iput p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->languageVersion:I

    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 2

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkOptimizationLevel(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    iput p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->optimizationLevel:I

    return-void
.end method

.method public setStrictMode(Z)V
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->strictMode:Z

    return-void
.end method

.method public setWarningAsError(Z)V
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->warningAsError:Z

    return-void
.end method
