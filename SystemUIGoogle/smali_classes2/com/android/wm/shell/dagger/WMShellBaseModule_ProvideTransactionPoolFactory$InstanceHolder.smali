.class final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideTransactionPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;

    invoke-direct {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;-><init>()V

    sput-object v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;

    return-object v0
.end method
