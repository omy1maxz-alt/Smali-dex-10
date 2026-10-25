.class public abstract synthetic Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_3

    return-object p0

    .line 0
    :cond_3
    const-string p0, "supplier"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "supplier.get()"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method
