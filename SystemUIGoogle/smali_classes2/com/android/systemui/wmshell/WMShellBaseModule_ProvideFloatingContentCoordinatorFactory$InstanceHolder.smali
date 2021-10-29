.class final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideFloatingContentCoordinatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;

    invoke-direct {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;

    return-object v0
.end method
