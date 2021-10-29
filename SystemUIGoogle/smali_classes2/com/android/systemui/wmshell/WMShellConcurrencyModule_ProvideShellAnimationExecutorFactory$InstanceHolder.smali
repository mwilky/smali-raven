.class final Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;

    invoke-direct {v0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;

    return-object v0
.end method
