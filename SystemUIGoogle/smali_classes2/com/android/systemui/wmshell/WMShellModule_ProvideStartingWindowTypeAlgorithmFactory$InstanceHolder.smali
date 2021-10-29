.class final Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellModule_ProvideStartingWindowTypeAlgorithmFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory;

    invoke-direct {v0}, Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellModule_ProvideStartingWindowTypeAlgorithmFactory;

    return-object v0
.end method
