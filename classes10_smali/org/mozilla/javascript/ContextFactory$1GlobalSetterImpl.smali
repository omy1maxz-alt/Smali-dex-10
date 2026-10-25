.class Lorg/mozilla/javascript/ContextFactory$1GlobalSetterImpl;
.super Ljava/lang/Object;
.source "ContextFactory.java"

# interfaces
.implements Lorg/mozilla/javascript/ContextFactory$GlobalSetter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextFactoryGlobal()Lorg/mozilla/javascript/ContextFactory;
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->access$000()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    return-object v0
.end method

.method public setContextFactoryGlobal(Lorg/mozilla/javascript/ContextFactory;)V
    .registers 2

    if-nez p1, :cond_7

    new-instance p1, Lorg/mozilla/javascript/ContextFactory;

    invoke-direct {p1}, Lorg/mozilla/javascript/ContextFactory;-><init>()V

    :cond_7
    invoke-static {p1}, Lorg/mozilla/javascript/ContextFactory;->access$002(Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/ContextFactory;

    return-void
.end method
