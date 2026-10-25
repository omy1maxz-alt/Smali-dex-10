.class public final synthetic Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Utils$MatchFilter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/gold/extension/youtube/shared/NavigationBar;->$r8$lambda$MLbuzZYhAaS7ZMO14kq0mQBEjW0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
