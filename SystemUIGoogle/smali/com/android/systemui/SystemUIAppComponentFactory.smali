.class public Lcom/android/systemui/SystemUIAppComponentFactory;
.super Landroidx/core/app/AppComponentFactory;
.source "SystemUIAppComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;,
        Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;
    }
.end annotation


# instance fields
.field public mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;


# direct methods
.method public static synthetic $r8$lambda$qcrPqG7eXiVK_IrWSM3yDqdi2js(Landroid/content/ContentProvider;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactory;->lambda$instantiateProviderCompat$1(Landroid/content/ContentProvider;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zKKm1nezMgurYfpE42JHdUJUlZ0(Lcom/android/systemui/SystemUIAppComponentFactory;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactory;->lambda$instantiateApplicationCompat$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/AppComponentFactory;-><init>()V

    return-void
.end method

.method private synthetic lambda$instantiateApplicationCompat$0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    return-void
.end method

.method private static synthetic lambda$instantiateProviderCompat$1(Landroid/content/ContentProvider;Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "inject"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No injector for class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppComponentFactory"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    invoke-interface {v0, p2}, Lcom/android/systemui/dagger/ContextComponentHelper;->resolveActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p1

    instance-of p2, p1, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;

    new-instance v0, Lcom/android/systemui/SystemUIAppComponentFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIAppComponentFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    invoke-interface {p2, v0}, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;->setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;)V

    :cond_0
    return-object p1
.end method

.method public instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object p0

    instance-of p1, p0, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;

    new-instance p2, Lcom/android/systemui/SystemUIAppComponentFactory$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/SystemUIAppComponentFactory$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentProvider;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;->setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;)V

    :cond_0
    return-object p0
.end method

.method public instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    invoke-interface {v0, p2}, Lcom/android/systemui/dagger/ContextComponentHelper;->resolveBroadcastReceiver(Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    return-object p0
.end method

.method public instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    invoke-interface {v0, p2}, Lcom/android/systemui/dagger/ContextComponentHelper;->resolveService(Ljava/lang/String;)Landroid/app/Service;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object p0

    return-object p0
.end method
