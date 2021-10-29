.class final Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;

    invoke-direct {v0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;

    return-object v0
.end method
