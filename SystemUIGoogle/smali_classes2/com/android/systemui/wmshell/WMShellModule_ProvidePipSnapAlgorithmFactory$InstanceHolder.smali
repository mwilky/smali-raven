.class final Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellModule_ProvidePipSnapAlgorithmFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;

    invoke-direct {v0}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;

    return-object v0
.end method
