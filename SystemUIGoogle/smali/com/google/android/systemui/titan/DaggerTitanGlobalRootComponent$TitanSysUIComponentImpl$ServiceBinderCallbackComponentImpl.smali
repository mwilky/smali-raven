.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ServiceBinderCallbackComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceBinderCallbackComponentImpl"
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final synthetic this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ServiceBinderCallbackComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ServiceBinderCallbackComponentImpl;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ServiceBinderCallbackComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ServiceBinderCallbackComponentImpl;->intent:Landroid/content/Intent;

    new-instance v2, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/content/Intent;)V

    return-object v2
.end method
