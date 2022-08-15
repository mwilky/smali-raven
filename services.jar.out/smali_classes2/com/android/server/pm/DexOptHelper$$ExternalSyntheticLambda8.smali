.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    check-cast p2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {p1, p2}, Lcom/android/server/pm/DexOptHelper;->$r8$lambda$bEwyKRP-Yh6MFX8SuBuOYaCi5_o(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method
