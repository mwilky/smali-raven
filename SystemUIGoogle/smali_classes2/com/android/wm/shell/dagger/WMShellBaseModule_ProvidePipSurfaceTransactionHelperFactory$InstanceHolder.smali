.class final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;

    invoke-direct {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;-><init>()V

    sput-object v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;

    return-object v0
.end method
