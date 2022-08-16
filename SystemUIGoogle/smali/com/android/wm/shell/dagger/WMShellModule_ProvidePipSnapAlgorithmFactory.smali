.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory;
.super Ljava/lang/Object;
.source "WMShellModule_ProvidePipSnapAlgorithmFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;-><init>()V

    return-object p0
.end method
