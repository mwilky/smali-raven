.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dagger/WMComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WMComponentBuilder"
.end annotation


# instance fields
.field public setShellMainThread:Landroid/os/HandlerThread;

.field public final synthetic this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentBuilder;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/dagger/WMComponent;
    .locals 2

    new-instance v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;

    iget-object v1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentBuilder;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, p0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;-><init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;Landroid/os/HandlerThread;)V

    return-object v0
.end method

.method public final setShellMainThread(Landroid/os/HandlerThread;)Lcom/android/systemui/dagger/WMComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    return-object p0
.end method
