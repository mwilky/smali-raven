.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellModule_ProvidePipSnapAlgorithmFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory;

    invoke-direct {v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory;-><init>()V

    sput-object v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory;

    return-void
.end method
