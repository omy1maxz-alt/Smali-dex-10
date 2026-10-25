.class public abstract Ljj$/nio/file/attribute/UserPrincipalLookupService;
.super Ljava/lang/Object;
.source "UserPrincipalLookupService.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract lookupPrincipalByGroupName(Ljava/lang/String;)Ljj$/nio/file/attribute/GroupPrincipal;
.end method

.method public abstract lookupPrincipalByName(Ljava/lang/String;)Ljj$/nio/file/attribute/UserPrincipal;
.end method
