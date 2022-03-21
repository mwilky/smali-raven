.class public abstract Lcom/android/systemui/dagger/PluginModule;
.super Ljava/lang/Object;
.source "PluginModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideActivityStarter(Lcom/android/systemui/ActivityStarterDelegate;Lcom/android/systemui/plugins/PluginDependencyProvider;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0
.end method
