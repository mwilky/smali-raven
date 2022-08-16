.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaShellComponentImpl"
.end annotation


# instance fields
.field public final callback:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/service/ObservableServiceConnection$Callback<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->callback:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;

    return-void
.end method


# virtual methods
.method public final getPersistentConnectionManager()Lcom/android/systemui/util/service/PersistentConnectionManager;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/util/service/PersistentConnectionManager<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    new-instance v8, Lcom/android/systemui/util/service/PersistentConnectionManager;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/util/time/SystemClock;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/util/service/ObservableServiceConnection;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->context:Landroid/content/Context;

    sget-object v5, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    invoke-virtual {v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f130212

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellComponent$MediaShellModule$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellComponent$MediaShellModule$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v3, v4, v6, v0, v7}, Lcom/android/systemui/util/service/ObservableServiceConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/service/ObservableServiceConnection$ServiceTransformer;)V

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->callback:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;

    invoke-virtual {v3, v0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->addCallback(Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;)V

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    invoke-virtual {v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c001a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    invoke-virtual {v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0c001b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    invoke-virtual {v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0c001c

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    invoke-virtual {v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    new-instance v9, Lcom/android/systemui/util/service/PackageObserver;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {v9, p0, v0}, Lcom/android/systemui/util/service/PackageObserver;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    move-object v0, v8

    move v5, v6

    move v6, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/service/PersistentConnectionManager;-><init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/service/ObservableServiceConnection;IIILcom/android/systemui/util/service/PackageObserver;)V

    return-object v8
.end method
