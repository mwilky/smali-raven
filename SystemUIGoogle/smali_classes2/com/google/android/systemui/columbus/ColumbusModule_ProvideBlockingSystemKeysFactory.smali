.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideBlockingSystemKeysFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory$InstanceHolder;->access$000()Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideBlockingSystemKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideBlockingSystemKeys()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;->provideBlockingSystemKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
