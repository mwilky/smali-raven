.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/dex/DexManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/dex/DexManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/dex/DexManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/dex/DexManager;

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {p0, p1}, Lcom/android/server/pm/DexOptHelper;->$r8$lambda$6gP50M3vUfdxmJ4JVgMAl35adKA(Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method
