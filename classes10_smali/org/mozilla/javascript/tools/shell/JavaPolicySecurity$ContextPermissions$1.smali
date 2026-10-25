.class Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions$1;
.super Ljava/lang/Object;
.source "JavaPolicySecurity.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions$1;->this$0:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions$1;->nextElement()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/security/Permission;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
