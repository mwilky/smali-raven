.class final Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "FrameworkServicesModule_ProvideInteractionJankMonitorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInteractionJankMonitorFactory;

    return-object v0
.end method
